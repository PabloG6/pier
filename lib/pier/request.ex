defmodule Pier.Request do
  alias Finch
  @default_scheme :unix
  @default_opts [
    receive_timeout: 60_000 * 3
  ]
  def build(method, url, headers \\ [], body \\ [], opts \\ []) do
    scheme = Application.get_env(:pier, :scheme, @default_scheme)
    unix_socket = Application.get_env(:pier, :unix_socket, "/var/run/docker.sock")

    case scheme do
      :unix ->
        merged_opts = Keyword.merge([unix_socket: unix_socket], opts)

        Finch.build(method, url, headers, body, merged_opts)

      _ ->
        Finch.build(method, url, headers, body, opts)
    end
  end

  def request(request) do
    name = Application.fetch_env!(:pier, :name)
    merged_opts = Application.get_all_env(:pier) |> Keyword.merge(@default_opts) |> Keyword.delete(:name)
    IO.inspect merged_opts
    request |> Finch.request(name, merged_opts)
  end

  def stream(request, {pid, caller}) do
    name = Application.fetch_env(:pier, :name)
    request |> Finch.stream(name, nil, &GenServer.cast(pid, {caller, {&1, &2}}))
  end

  def stream(request, stream_fn) do
    name = Application.fetch_env!(:pier, :name)
    request |> Finch.stream(name, [], stream_fn)
  end

  @spec generate_base_url(any()) :: binary() | URI.t()
  def generate_base_url(path) do
    case Application.get_env(:pier, :scheme, @default_scheme) do
      :unix ->
        %{URI.parse("http://localhost") | path: path}
        |> URI.to_string()

      _ ->
        base_url = Application.fetch_env!(:pier, :base_url)
        %{URI.parse(base_url) | path: path}
    end
  end

  def add_path_params(base_url, _definitions, []), do: base_url

  def add_path_params(base_url, definitions, [{key, value} | tail]) do
    case definitions do
      %{^key => :path} ->
        String.replace(base_url, "{#{Atom.to_string(key)}}", value)
        |> add_path_params(definitions, tail)

      _ ->
        add_path_params(base_url, definitions, tail)
    end
  end


  def build_headers(headers, definitions, [{key, value} | tail]) do
    case definitions do
      %{^key => :header} ->
        build_headers(headers ++ [{Atom.to_string(key), value}], definitions, tail)

      _ ->
        build_headers(headers, definitions, tail)
    end
  end

  def build_headers(headers, _definitions, []), do: headers


  def add_query_params(base_url, definitions, opts) do
    uri = URI.parse(base_url)

    uri_params =
      Enum.reduce(opts, [], fn {key, value}, acc ->
        if definitions[key] == :query do
          acc ++ [{key, value}]
        else
          acc
        end
      end)

    %{uri | query: URI.encode_query(uri_params)}
    |> URI.to_string()
  end
end

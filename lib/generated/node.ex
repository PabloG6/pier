defmodule Docker.Engine.Node do
  @moduledoc "Nodes are instances of the Engine participating in a swarm. Swarm mode\nmust be enabled for these endpoints to work.\n"
  def list(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/nodes")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def delete(opts \\ []) do
    optional_params = %{force: :query, id: :path}

    path =
      Pier.Request.generate_base_url("/nodes/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:delete, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/nodes/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def update(opts \\ []) do
    optional_params = %{id: :path, version: :query, body: :body}

    path =
      Pier.Request.generate_base_url("/nodes/{id}/update")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end
end
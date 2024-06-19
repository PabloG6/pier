defmodule Pier.Engine.Network do
  @moduledoc "Networks are user-defined networks that containers can be attached to.\nSee the [networking documentation](https://docs.docker.com/network/)\nfor more information.\n"
  def create(opts \\ []) do
    optional_params = %{networkConfig: :body}

    path =
      Pier.Request.generate_base_url("/networks/create")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def connect(opts \\ []) do
    optional_params = %{id: :path, container: :body}

    path =
      Pier.Request.generate_base_url("/networks/{id}/connect")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def delete(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/networks/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:delete, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{id: :path, scope: :query, verbose: :query}

    path =
      Pier.Request.generate_base_url("/networks/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def list(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/networks")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def prune(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/networks/prune")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def disconnect(opts \\ []) do
    optional_params = %{id: :path, container: :body}

    path =
      Pier.Request.generate_base_url("/networks/{id}/disconnect")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end
end
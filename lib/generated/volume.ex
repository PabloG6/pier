defmodule Pier.Engine.Volume do
  @moduledoc "Create and manage persistent storage that can be attached to containers.\n"
  def delete(opts \\ []) do
    optional_params = %{force: :query, name: :path}

    path =
      Pier.Request.generate_base_url("/volumes/{name}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:delete, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{name: :path}

    path =
      Pier.Request.generate_base_url("/volumes/{name}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def update(opts \\ []) do
    optional_params = %{name: :path, version: :query, body: :body}

    path =
      Pier.Request.generate_base_url("/volumes/{name}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:put, path, headers)
  end

  def list(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/volumes")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def create(opts \\ []) do
    optional_params = %{volumeConfig: :body}

    path =
      Pier.Request.generate_base_url("/volumes/create")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def prune(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/volumes/prune")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end
end
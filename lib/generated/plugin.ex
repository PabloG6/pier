defmodule Pier.Engine.Plugin do
  @moduledoc nil
  def set(opts \\ []) do
    optional_params = %{name: :path, body: :body}

    path =
      Pier.Request.generate_base_url("/plugins/{name}/set")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def get_privileges(opts \\ []) do
    optional_params = %{remote: :query}

    path =
      Pier.Request.generate_base_url("/plugins/privileges")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def upgrade(opts \\ []) do
    optional_params = %{name: :path, remote: :query, body: :body, "X-Registry-Auth": :header}

    path =
      Pier.Request.generate_base_url("/plugins/{name}/upgrade")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def create(opts \\ []) do
    optional_params = %{name: :query, tarContext: :body}

    path =
      Pier.Request.generate_base_url("/plugins/create")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def disable(opts \\ []) do
    optional_params = %{force: :query, name: :path}

    path =
      Pier.Request.generate_base_url("/plugins/{name}/disable")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def enable(opts \\ []) do
    optional_params = %{timeout: :query, name: :path}

    path =
      Pier.Request.generate_base_url("/plugins/{name}/enable")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def list(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/plugins")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def push(opts \\ []) do
    optional_params = %{name: :path}

    path =
      Pier.Request.generate_base_url("/plugins/{name}/push")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{name: :path}

    path =
      Pier.Request.generate_base_url("/plugins/{name}/json")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def delete(opts \\ []) do
    optional_params = %{force: :query, name: :path}

    path =
      Pier.Request.generate_base_url("/plugins/{name}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:delete, path, headers)
  end

  def pull(opts \\ []) do
    optional_params = %{name: :query, remote: :query, body: :body, "X-Registry-Auth": :header}

    path =
      Pier.Request.generate_base_url("/plugins/pull")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end
end
defmodule Docker.Engine.Service do
  @moduledoc "Services are the definitions of tasks to run on a swarm. Swarm mode must\nbe enabled for these endpoints to work.\n"
  def logs(opts \\ []) do
    optional_params =
      %{
        id: :path,
        stdout: :query,
        stderr: :query,
        tail: :query,
        since: :query,
        details: :query,
        follow: :query,
        timestamps: :query
      }

    path =
      Pier.Request.generate_base_url("/services/{id}/logs")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def list(opts \\ []) do
    optional_params = %{status: :query, filters: :query}

    path =
      Pier.Request.generate_base_url("/services")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def delete(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/services/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:delete, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{id: :path, insertDefaults: :query}

    path =
      Pier.Request.generate_base_url("/services/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def create(opts \\ []) do
    optional_params = %{body: :body, "X-Registry-Auth": :header}

    path =
      Pier.Request.generate_base_url("/services/create")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def update(opts \\ []) do
    optional_params =
      %{
        id: :path,
        version: :query,
        body: :body,
        "X-Registry-Auth": :header,
        registryAuthFrom: :query,
        rollback: :query
      }

    path =
      Pier.Request.generate_base_url("/services/{id}/update")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end
end
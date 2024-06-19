defmodule Docker.Engine.Task do
  @moduledoc "A task is a container running on a swarm. It is the atomic scheduling unit\nof swarm. Swarm mode must be enabled for these endpoints to work.\n"
  def list(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/tasks")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

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
      Pier.Request.generate_base_url("/tasks/{id}/logs")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/tasks/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end
end
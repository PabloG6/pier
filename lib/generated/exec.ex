defmodule Pier.Engine.Exec do
  @moduledoc "Run new commands inside running containers. Refer to the\n[command-line reference](https://docs.docker.com/engine/reference/commandline/exec/)\nfor more information.\n\nTo exec a command in a container, you first need to create an exec instance,\nthen start it. These two API endpoints are wrapped up in a single command-line\ncommand, `docker exec`.\n"
  def start(opts \\ []) do
    optional_params = %{id: :path, execStartConfig: :body}

    path =
      Pier.Request.generate_base_url("/exec/{id}/start")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def container(opts \\ []) do
    optional_params = %{id: :path, execConfig: :body}

    path =
      Pier.Request.generate_base_url("/containers/{id}/exec")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def resize(opts \\ []) do
    optional_params = %{id: :path, h: :query, w: :query}

    path =
      Pier.Request.generate_base_url("/exec/{id}/resize")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/exec/{id}/json")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end
end
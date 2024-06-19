defmodule Docker.Engine.Container do
  @moduledoc "Create and manage containers.\n"
  def logs(opts \\ []) do
    optional_params =
      %{
        id: :path,
        stdout: :query,
        stderr: :query,
        tail: :query,
        until: :query,
        since: :query,
        follow: :query,
        timestamps: :query
      }

    path =
      Pier.Request.generate_base_url("/containers/{id}/logs")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def list(opts \\ []) do
    optional_params = %{all: :query, size: :query, filters: :query, limit: :query}

    path =
      Pier.Request.generate_base_url("/containers/json")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def update(opts \\ []) do
    optional_params = %{id: :path, update: :body}

    path =
      Pier.Request.generate_base_url("/containers/{id}/update")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def export(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/containers/{id}/export")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def restart(opts \\ []) do
    optional_params = %{id: :path, signal: :query, t: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/restart")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def stats(opts \\ []) do
    optional_params = %{id: :path, stream: :query, "one-shot": :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/stats")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def kill(opts \\ []) do
    optional_params = %{id: :path, signal: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/kill")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def inspect(opts \\ []) do
    optional_params = %{id: :path, size: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/json")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def changes(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/containers/{id}/changes")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def unpause(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/containers/{id}/unpause")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def wait(opts \\ []) do
    optional_params = %{id: :path, condition: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/wait")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def start(opts \\ []) do
    optional_params = %{id: :path, detachKeys: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/start")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def top(opts \\ []) do
    optional_params = %{id: :path, ps_args: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/top")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def archive(opts \\ []) do
    optional_params = %{id: :path, path: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/archive")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def archive_info(opts \\ []) do
    optional_params = %{id: :path, path: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/archive")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:head, path, headers)
  end

  def put_archive(opts \\ []) do
    optional_params =
      %{
        id: :path,
        path: :query,
        inputStream: :body,
        noOverwriteDirNonDir: :query,
        copyUIDGID: :query
      }

    path =
      Pier.Request.generate_base_url("/containers/{id}/archive")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:put, path, headers)
  end

  def prune(opts \\ []) do
    optional_params = %{filters: :query}

    path =
      Pier.Request.generate_base_url("/containers/prune")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def create(opts \\ []) do
    optional_params = %{name: :query, body: :body, platform: :query}

    path =
      Pier.Request.generate_base_url("/containers/create")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def resize(opts \\ []) do
    optional_params = %{id: :path, h: :query, w: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/resize")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def pause(opts \\ []) do
    optional_params = %{id: :path}

    path =
      Pier.Request.generate_base_url("/containers/{id}/pause")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def stop(opts \\ []) do
    optional_params = %{id: :path, signal: :query, t: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/stop")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def attach_websocket(opts \\ []) do
    optional_params =
      %{
        id: :path,
        stream: :query,
        stdout: :query,
        stderr: :query,
        stdin: :query,
        logs: :query,
        detachKeys: :query
      }

    path =
      Pier.Request.generate_base_url("/containers/{id}/attach/ws")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:get, path, headers)
  end

  def delete(opts \\ []) do
    optional_params = %{force: :query, id: :path, link: :query, v: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:delete, path, headers)
  end

  def rename(opts \\ []) do
    optional_params = %{id: :path, name: :query}

    path =
      Pier.Request.generate_base_url("/containers/{id}/rename")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end

  def attach(opts \\ []) do
    optional_params =
      %{
        id: :path,
        stream: :query,
        stdout: :query,
        stderr: :query,
        stdin: :query,
        logs: :query,
        detachKeys: :query
      }

    path =
      Pier.Request.generate_base_url("/containers/{id}/attach")
      |> Pier.Request.add_path_params(optional_params, opts)
      |> Pier.Request.add_query_params(optional_params, opts)

    headers = Pier.Request.build_headers([], optional_params, opts)
    Pier.Request.build(:post, path, headers)
  end
end
defmodule Docker.Engine.Container do
  @moduledoc "Create and manage containers.\n"
  def logs(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/logs",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def list(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/containers/json", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def update(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/update",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "update", "required" => true, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def export(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/export",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def restart(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/restart",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def stats(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/stats",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def kill(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/kill",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def inspect(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/json",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def exec(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/exec",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "execConfig", "required" => true, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def changes(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/changes",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def unpause(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/unpause",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def wait(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/wait",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def start(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/start",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def top(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/top",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def archive(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/archive",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def archive_info(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/archive",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("head")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def container_archive(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/archive",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("put")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "inputStream", "required" => true, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def prune(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/containers/prune", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def create(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/containers/create", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "body", "required" => true, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def resize(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/resize",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def pause(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/pause",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def stop(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/stop",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def attach_websocket(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/attach/ws",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def delete(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("delete")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def rename(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/rename",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def attach(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/containers/{id}/attach",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end
end
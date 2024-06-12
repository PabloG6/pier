defmodule Docker.Engine.Exec do
  @moduledoc "Run new commands inside running containers. Refer to the\n[command-line reference](https://docs.docker.com/engine/reference/commandline/exec/)\nfor more information.\n\nTo exec a command in a container, you first need to create an exec instance,\nthen start it. These two API endpoints are wrapped up in a single command-line\ncommand, `docker exec`.\n"
  def start(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/exec/{id}/start",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{
        "name" => "execStartConfig",
        "required" => false,
        "schema" => "skip_for_now",
        "type" => nil
      }
    ])
    |> Pier.Request.make_request()
  end

  def container(params, opts \\ []) do
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

  def resize(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/exec/{id}/resize",
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
        "/exec/{id}/json",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end
end
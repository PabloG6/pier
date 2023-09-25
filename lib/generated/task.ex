defmodule Docker.Engine.Task do
  @moduledoc "A task is a container running on a swarm. It is the atomic scheduling unit\nof swarm. Swarm mode must be enabled for these endpoints to work.\n"
  def list(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/tasks", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def logs(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/tasks/{id}/logs",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def inspect(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/tasks/{id}",
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
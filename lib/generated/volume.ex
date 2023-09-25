defmodule Docker.Engine.Volume do
  @moduledoc "Create and manage persistent storage that can be attached to containers.\n"
  def delete(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/volumes/{name}",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("delete")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def inspect(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/volumes/{name}",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def update(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/volumes/{name}",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("put")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "body", "required" => false, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def list(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/volumes", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def create(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/volumes/create", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "volumeConfig", "required" => true, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def prune(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/volumes/prune", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end
end
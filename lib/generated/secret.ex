defmodule Docker.Engine.Secret do
  @moduledoc "Secrets are sensitive data that can be used by services. Swarm mode must\nbe enabled for these endpoints to work.\n"
  def update(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/secrets/{id}/update",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "body", "required" => false, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def delete(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/secrets/{id}",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
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
        "/secrets/{id}",
        [%{"name" => "id", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def create(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/secrets/create", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "body", "required" => false, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def list(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/secrets", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end
end
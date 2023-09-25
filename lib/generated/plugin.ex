defmodule Docker.Engine.Plugin do
  @moduledoc nil
  def set(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/plugins/{name}/set",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
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

  def plugin_privileges(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/plugins/privileges", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def upgrade(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/plugins/{name}/upgrade",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
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

  def create(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/plugins/create", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "tarContext", "required" => false, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def disable(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/plugins/{name}/disable",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def enable(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/plugins/{name}/enable",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def list(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/plugins", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def push(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/plugins/{name}/push",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
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
        "/plugins/{name}/json",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
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
        "/plugins/{name}",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("delete")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def pull(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/plugins/pull", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "body", "required" => false, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end
end
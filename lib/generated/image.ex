defmodule Docker.Engine.Image do
  @moduledoc nil
  def build_prune(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/build/prune", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def inspect(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/images/{name}/json",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def create(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/images/create", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "inputImage", "required" => false, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def commit(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/commit", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{
        "name" => "containerConfig",
        "required" => false,
        "schema" => "skip_for_now",
        "type" => nil
      }
    ])
    |> Pier.Request.make_request()
  end

  def delete(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/images/{name}",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("delete")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def list(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/images/json", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def load(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/images/load", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "imagesTarball", "required" => false, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def search(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/images/search", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def push(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/images/{name}/push",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def build(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/build", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "inputStream", "required" => false, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def prune(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/images/prune", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def history(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/images/{name}/history",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def get(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/images/{name}/get",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def get_all(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/images/get", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def tag(params, opts \\ []) do
    path =
      Pier.OpenApi.Params.replace_path_params(
        "/images/{name}/tag",
        [%{"name" => "name", "required" => true, "schema" => "skip_for_now", "type" => "string"}],
        params
      )

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end
end
defmodule Docker.Engine.System do
  @moduledoc nil
  def info(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/info", nil, params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, nil)
    |> Pier.Request.make_request()
  end

  def data_usage(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/system/df", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def events(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/events", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def auth(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/auth", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "authConfig", "required" => false, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def version(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/version", nil, params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, nil)
    |> Pier.Request.make_request()
  end

  def ping(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/_ping", nil, params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, nil)
    |> Pier.Request.make_request()
  end

  def ping_head(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/_ping", nil, params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("head")
    |> Pier.Request.put_body_params(params, nil)
    |> Pier.Request.make_request()
  end
end
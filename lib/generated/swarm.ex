defmodule Docker.Engine.Swarm do
  @moduledoc "Engines can be clustered together in a swarm. Refer to the\n[swarm mode documentation](https://docs.docker.com/engine/swarm/)\nfor more information.\n"
  def init(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/swarm/init", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "body", "required" => true, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def update(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/swarm/update", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "body", "required" => true, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def join(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/swarm/join", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "body", "required" => true, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end

  def leave(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/swarm/leave", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end

  def inspect(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/swarm", nil, params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, nil)
    |> Pier.Request.make_request()
  end

  def unlockkey(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/swarm/unlockkey", nil, params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, nil)
    |> Pier.Request.make_request()
  end

  def unlock(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/swarm/unlock", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("post")
    |> Pier.Request.put_body_params(params, [
      %{"name" => "body", "required" => true, "schema" => "skip_for_now", "type" => nil}
    ])
    |> Pier.Request.make_request()
  end
end
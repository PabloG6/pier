defmodule Docker.Engine.System do
  @moduledoc nil
  def data_usage(params, opts \\ []) do
    path = Pier.OpenApi.Params.replace_path_params("/system/df", [], params)

    Pier.Request.new_request(opts)
    |> Pier.Request.put_endpoint(path)
    |> Pier.Request.put_method("get")
    |> Pier.Request.put_body_params(params, [])
    |> Pier.Request.make_request()
  end
end
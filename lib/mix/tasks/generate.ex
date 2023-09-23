defmodule Mix.Tasks.Docker.Generate do
  use Mix.Task
  alias Pier.OpenApi
  require Logger
  def run(_) do
    opts = [
      path: [:code.priv_dir(:pier) , "openapi", "v1.143.json"] |> Path.join()
    ]
    pipeline = OpenApi.pipeline(opts)
    OpenApi.run_pipeline(pipeline)

 end
end

defmodule Pier.OpenApi do
  require Logger

  alias Pier.OpenApi
  def pipeline(opts) do
    [
      {Pier.OpenApi.Tasks.Decode, opts},
      {OpenApi.Tasks.Spec, opts},
      {OpenApi.Tasks.Modules, opts},
      {Pier.OpenApi.Tasks.Definitions, opts},
      {Pier.OpenApi.Tasks.Functions, opts},
      {Pier.OpenApi.Tasks.Compile, opts}

    ]
  end

  def run_pipeline(opts) do
    opts
    |> run_operation(%OpenApi.Blueprint{})
  end

  defp run_operation([{todo, options} | remaining], blueprint ) do
    case todo.build(blueprint, options) do
      {:ok, blueprint} -> run_operation(remaining, blueprint)
      {:error, _reason} ->
        Logger.error("failed to run application on #{todo} operation")
        :error
      [] -> {:ok, blueprint}
    end
  end


  defp run_operation([], blueprint) do

    {:ok, blueprint}
  end
end

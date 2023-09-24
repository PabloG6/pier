defmodule Pier.OpenApi do
  require Logger

  alias Pier.OpenApi
  def pipeline(opts) do
    [
      {Pier.OpenApi.Operations.Decode, opts},
      {OpenApi.Operations.Spec, opts},
      {OpenApi.Operations.Module, opts},
      {Pier.OpenApi.Operations.Definitions, opts},
      {Pier.OpenApi.Operations.Functions, opts},
      {Pier.OpenApi.Operations.Compile, opts}

    ]
  end

  def run_pipeline(opts) do
    opts
    |> run_operation(%OpenApi.Blueprint{})
  end

  defp run_operation([{todo, options} | remaining], blueprint ) do
    case todo.run(blueprint, options) do
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

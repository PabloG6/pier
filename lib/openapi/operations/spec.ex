defmodule Pier.OpenApi.Operations.Spec do
  require Logger
  defstruct [:basePath, :produces, :consumers, :schemes]

  def run(%{contents: contents} = blueprint, _options) do
    Logger.debug("running operation Pier.OpenApi.Operations.Spec")
      {:ok, spec} = Poison.encode!(contents) |> Poison.decode(%{as: %__MODULE__{}})
      {:ok, %{blueprint | spec: spec}}
  end
end

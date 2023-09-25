defmodule Pier.OpenApi.Tasks.Spec do
  require Logger
  defstruct [:basePath, :produces, :consumers, :schemes]

  def build(%{contents: contents} = blueprint, _options) do
    # Logger.debug("running operation Pier.OpenApi.Tasks.Spec")
      {:ok, spec} = Poison.encode!(contents) |> Poison.decode(%{as: %__MODULE__{}})
      {:ok, %{blueprint | spec: spec}}
  end
end

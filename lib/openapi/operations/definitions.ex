defmodule Pier.OpenApi.Operations.Definitions do
  @moduledoc false
  alias Pier.OpenApi.Operations
  use Pier.CustomLogger, name: __MODULE__
  defstruct [:name, :description, :required_params, :properties]
  def run(%{contents: contents} = blueprint, _opts) do
      definitions = Enum.map(contents["definitions"],&retrieve_metadata(&1))
      {:ok, %{blueprint | definitions: definitions}}
  end

  def retrieve_metadata({name, spec}) do
    Logger.metadata(module_name: __MODULE__)
    # Logger.debug("retrieving metadata for type definition: #{name}")
      %Operations.Definitions{
        name: name,
        description: spec["description"],
        required_params: spec["required"],
        properties: get_properties(spec)
      }
  end

  defp get_properties(%{"properties" => properties}) do
    Enum.map(properties, fn {x, v} -> %{name: x, nullable: v["x-nullable"], type: v["type"]} end)

  end

  defp get_properties(_) do
    nil
  end
end

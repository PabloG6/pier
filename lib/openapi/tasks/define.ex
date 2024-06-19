defmodule Pier.OpenApi.Tasks.Definitions do
  @moduledoc false
  alias Pier.OpenApi.Tasks
  use Pier.CustomLogger, name: __MODULE__
  defstruct [:name, :description, :required_params, :properties, :module_name, parameters: []]
  def build(%{contents: contents} = blueprint, _opts) do
      definitions = Enum.map(contents["definitions"],&retrieve_metadata(&1))
      {:ok, %{blueprint | definitions: definitions}}
  end

  def retrieve_metadata({name, %{"type" => "object"}  = definition_spec}) do
    Logger.metadata(module_name: __MODULE__)
    parameters = get_parameters(definition_spec["properties"])

    %Tasks.Definitions{
        name: name,
        module_name: Module.concat(["Docker", "Types", Macro.camelize(name)]),
        description: definition_spec["description"] || false,
        required_params: definition_spec["required"],
        parameters: parameters,
        properties: nil
      }
  end

  def retrieve_metadata({name, definition_spec}) do
    %Tasks.Definitions{
        name: name,
        module_name: Module.concat(["Docker", "Types", Macro.camelize(name)]),
        description: definition_spec["description"] || false,
        required_params: definition_spec["required"],
        properties: nil
      }
  end

  @spec get_parameters(any) :: []
  defp get_parameters(nil), do: []
  defp get_parameters(properties) do
    Enum.map(properties, fn {k, _} ->
      String.to_atom(k)
    end)

  end



end

defmodule Pier.OpenApi.Operations.Module do
  require Logger
  alias Pier.OpenApi.Operations
  defstruct [:module_name, :file_name, :description, :methods, :tag]

  def run(%{contents: contents} = blueprint, _options) do
    modules = contents["tags"] |> Enum.map(&retrieve_metada(&1))
    {:ok, %{blueprint | modules: modules}}
  end

  def retrieve_metada(tag) do
    # Logger.debug("retrieving metadata for module #{tag["name"]}")
    %Operations.Module{
      module_name: Module.concat("Docker.Engine", tag["name"]),
      file_name: tag["name"],
      description: tag["description"],
      tag: tag["name"]
    }
  end

  end

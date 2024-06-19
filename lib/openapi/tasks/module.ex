defmodule Pier.OpenApi.Tasks.Modules do
  require Logger
  alias Pier.OpenApi.Tasks
  defstruct [:module_name, :file_name, :description, :methods, :tag]


  def build(%{contents: contents} = blueprint, _options) do

    modules = contents["tags"] |> Enum.map(&retrieve_metada(&1))
    {:ok, %{blueprint | modules: modules}}
  end

  def retrieve_metada(tag) do
    %Tasks.Modules{
      module_name: Module.concat("Pier.Engine", tag["name"]),
      file_name: tag["name"],
      description: tag["description"],
      tag: tag["name"]
    }
  end

  end

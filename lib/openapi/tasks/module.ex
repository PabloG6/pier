defmodule Pier.OpenApi.Tasks.Modules do
  require Logger
  alias Pier.OpenApi.Tasks
  defstruct [:module_name, :file_name, :description, :methods, :tag]


  def build(%{contents: contents} = blueprint, _options) do

    File.write([:code.priv_dir(:pier) , "openapi", "dump.json"] |> Path.join(), Poison.encode!(contents))
    modules = contents["tags"] |> Enum.map(&retrieve_metada(&1))
    {:ok, %{blueprint | modules: modules}}
  end

  def retrieve_metada(tag) do
    # Logger.debug("retrieving metadata for module #{tag["name"]}")
    %Tasks.Modules{
      module_name: Module.concat("Docker.Engine", tag["name"]),
      file_name: tag["name"],
      description: tag["description"],
      tag: tag["name"]
    }
  end

  end

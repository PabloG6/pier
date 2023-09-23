defmodule Pier.OpenApi.Operations.Compile do
  require Logger
  def run(blueprint, _opts) do
    modules = Enum.map(blueprint.modules, fn module -> {module.name, module} end)
    for {name, _module} <- modules do
      Logger.debug("compiling: #{inspect(name)}")
      File.write!("lib/generated/#{String.downcase(name)}.ex", "")
    end


    {:ok, blueprint}
  end
end

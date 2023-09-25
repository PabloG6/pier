defmodule Pier.OpenApi.Tasks.Compile do
  alias Pier.OpenApi.Blueprint
  alias Pier.OpenApi.Schema.Operation
  require Logger

  def build(%Blueprint{} = blueprint, _opts) do
    modules = Enum.map(blueprint.modules, fn module -> {module.module_name, module} end)

    for {name, module} <- modules do
      Logger.debug("compiling: #{inspect(name)}")

      # search for all function definitions in the paths variable"

      functions = Enum.filter(blueprint.paths, fn {path, _} -> String.contains?(path, String.downcase(module.tag)) end) |> List.flatten()
      Enum.each(functions, fn {path, v} ->

        Enum.each(v, &Logger.debug("#{path} #{&1.title}"))
      end)
      built_functions = Enum.map(functions, &build_functions/1)

      # Logger.debug("built_functions size: #{length(built_functions)}")
      built_functions = List.flatten(built_functions)

      body =
        quote do
          @moduledoc unquote(module.description)
          unquote_splicing(built_functions)
        end

      module_code =
        quote do
          defmodule unquote(name) do
            unquote(body)
          end
        end

      bin =
        module_code
        |> Macro.to_string()
        |> Code.format_string!()

      try do
        File.write!("lib/generated/#{String.downcase(module.file_name)}.ex", bin)
      rescue
        e -> IO.inspect(e)
      end
    end

    {:ok, blueprint}
  end



  defp build_functions({_path, funcs}) do
    body = fn %Operation{} = operation ->
      # Logger.debug(
      #   "#{operation.function_name} #{operation.path} #{operation.title} #{inspect(operation.tags)}"
      # )

      quote do
        def unquote(String.to_atom(operation.function_name))() do
        end
      end
    end

    Enum.map(funcs, body)
  end
end

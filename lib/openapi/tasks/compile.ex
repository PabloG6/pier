defmodule Pier.OpenApi.Tasks.Compile do
  alias Pier.OpenApi.Blueprint
  alias Pier.OpenApi.Schema.Operation
  require Logger

  def build(%Blueprint{} = blueprint, _opts) do
    types = Enum.map(blueprint.definitions, fn definition -> {definition.module_name, definition} end)
      for {_module_name, definition} <- types do
        parameters = quote do
          defstruct unquote(definition.parameters)
        end
        module = quote do

          defmodule unquote(definition.module_name) do
              unquote(parameters)
          end
        end

        code = Macro.to_string(module) |> Code.format_string!()
        File.mkdir("lib/generated/types")
        File.write!("lib/generated/types/#{Macro.underscore(definition.name)}.ex", code)
      end
    modules = Enum.map(blueprint.modules, fn module -> {module.module_name, module} end)
    for {name, module} <- modules do

      # search for all function definitions in the paths variable"


      functions = Enum.filter(blueprint.paths, fn {_, functions} ->
        tags = Enum.map(functions, fn func ->
          [tag | _] = func.tags
          String.downcase(tag)
        end)
        Enum.any?(tags, fn tag ->
          tag == String.downcase(module.tag)

        end)
      end) |> List.flatten()
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
      Logger.debug(
        "#{operation.function_name} #{operation.path} #{operation.title} #{inspect(operation.tags)}"
      )
      quote do

        def unquote(String.to_atom(operation.function_name))(params, opts \\ []) do
          path = Pier.OpenApi.Params.replace_path_params(unquote(operation.path), unquote(operation.path_params), params)
          Pier.Request.new_request(opts)
          |> Pier.Request.put_endpoint(path)
          |> Pier.Request.put_method(unquote(operation.method))
          |> Pier.Request.put_body_params(params, unquote(operation.body_params))
          |> Pier.Request.make_request()
        end
      end
    end

    Enum.map(funcs, body)
  end
end

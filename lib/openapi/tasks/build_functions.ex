defmodule Pier.OpenApi.Tasks.Functions do
  alias Pier.OpenApi.Schema.Operation

  require Logger

  def build(%{contents: contents} = blueprint, _) do
    paths = Enum.map(contents["paths"], &build_operations/1) |> Enum.into(%{})
    {:ok, %{blueprint | paths: paths}}
  end

  defp build_operations({path, properties}) do


    {path, Enum.map(properties, &retrieve_methods(path, &1))}


  end


  defp retrieve_methods(path, {method, metadata}) do
    responses = get_success_response(metadata) |> Enum.into(%{})
    body_params = get_params(metadata["parameters"], "body")
    path_params = get_params(metadata["parameters"], "path")
   query_params = get_params(metadata["parameters"], "query")
    %Operation{
      path: path,
      method: method,
      title: metadata["operationId"],
      tags: metadata["tags"],
      id: metadata["operationId"],
      function_name: create_function_name(metadata["tags"], metadata["operationId"]),
      success_response: responses,
      hijack_response: responses["101"],
      body_params: body_params,
      path_params: path_params,
      query_params: query_params
    }


  end


  defp get_success_response(%{"responses" => responses}) do
    Enum.filter(responses, fn {x, _} ->
      if String.to_integer(x) in 101..299 do
        true
      else
        false
      end
    end)
  end

  def get_params(nil, _), do: nil

  def get_params(metadata, key) do
    Enum.filter(metadata, &(&1["in"] == key))
    |> Enum.map(&create_map_from_params/1)




  end


  defp create_map_from_params(params) do
      %{"name" => params["name"], "schema" => "skip_for_now", "type" => params["type"], "required" => params["required"] || false}
  end

  defp create_function_name([tag | _], method_name) do
    dbg(tag)
    dbg(method_name)

    if String.contains?(method_name, tag) do
        method_name  |> String.replace(tag, "") |> Macro.underscore()

    else
       Macro.underscore(method_name)
    end


  end




end

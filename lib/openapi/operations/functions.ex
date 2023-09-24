defmodule Pier.OpenApi.Operations.Functions do
  alias Pier.OpenApi.Schema.Operation

  require Logger
  def run(%{contents: contents} = blueprint, _) do
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
      function_name: create_function_name(metadata["operationId"]),
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
    |> Enum.map(&combine_params/1)




  end


  defp combine_params(params) do
      %{name: params["name"], schema: params["schema"], type: params["type"]}
  end

  defp create_function_name(prefix) do
    prefix |> Macro.underscore() |> String.split("_") |> Enum.reverse() |> Enum.join("_")
  end




end

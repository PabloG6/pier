defmodule Pier.OpenApi.Path do

  def replace_path_params(path, [], _), do: path
  def replace_path_params(path, params, path_params) do
    path <> params <> path_params
  end
end

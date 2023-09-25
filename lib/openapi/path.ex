defmodule Pier.OpenApi.Params do
  def replace_path_params(path, path_params, params) do
    Enum.reduce(path_params, path, &String.replace(&2, "{#{&1["name"]}}", params[&1["name"]]))
  end
end

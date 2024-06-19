defmodule Pier.OpenApi.Tasks.BuildParams do
  def build(%{contents: _contents} = blueprint, _opts) do
   {:ok, blueprint}
  end
end

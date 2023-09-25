defmodule Pier.OpenApi.Tasks.Decode do

  def build(blueprint, opts) do
      {:ok, content} = Keyword.get(opts, :path)
      |> File.read!()
      |> Poison.decode()

      {:ok, %{blueprint | contents: content}}
  end
end

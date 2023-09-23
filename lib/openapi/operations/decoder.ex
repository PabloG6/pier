defmodule Pier.OpenApi.Operations.Decode do

  def run(blueprint, opts) do
      {:ok, content} = Keyword.get(opts, :path)
      |> File.read!()
      |> Poison.decode()

      {:ok, %{blueprint | contents: content}}
  end
end

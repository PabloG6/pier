defmodule PierTest do
  use ExUnit.Case
  doctest Pier
  require Logger

  test "greets the world" do
    assert Pier.hello() == :world
  end

  @tag timeout: :infinity

  test "ping docker endpoint" do
    Application.put_env(:pier, :name, MyFinch)
    Finch.start_link(name: MyFinch)
  end
end

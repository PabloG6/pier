defmodule PierTest do
  use ExUnit.Case
  doctest Pier

  test "greets the world" do
    assert Pier.hello() == :world
  end

  test "build a simple docker image" do
  end
end

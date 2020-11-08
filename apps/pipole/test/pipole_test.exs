defmodule PipoleTest do
  use ExUnit.Case
  doctest Pipole

  test "greets the world" do
    assert Pipole.hello() == :world
  end
end

defmodule AskInternTest do
  use ExUnit.Case
  doctest AskIntern

  test "greets the world" do
    assert AskIntern.hello() == :world
  end
end

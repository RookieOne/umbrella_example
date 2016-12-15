defmodule HelloWorldTest do
  use ExUnit.Case
  doctest HelloWorld

  test "the truth" do
    assert 1 + 1 == 2
  end
  test "message" do
    assert HelloWorld.message == "Hello World"
  end
end

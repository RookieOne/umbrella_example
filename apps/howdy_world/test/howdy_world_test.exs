defmodule HowdyWorldTest do
  use ExUnit.Case
  doctest HowdyWorld

  test "the truth" do
    assert 1 + 1 == 2
  end
  test "message" do
    assert HowdyWorld.message == "Howdy World"
  end
end

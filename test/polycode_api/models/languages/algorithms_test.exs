defmodule PolycodeApi.Models.Languages.AlgorithmsTest do
  use ExUnit.Case
  doctest PolycodeApi.Models.Languages.Algorithms

  test "greets the world" do
    assert PolycodeApi.soma(1,2) == 3
  end
end

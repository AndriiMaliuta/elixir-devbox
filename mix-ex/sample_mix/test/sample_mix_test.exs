defmodule SampleMixTest do
  use ExUnit.Case
  doctest SampleMix

  test "greets the world" do
    assert SampleMix.hello() == :world
  end
end

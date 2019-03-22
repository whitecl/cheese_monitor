defmodule CheeseMonitorTest do
  use ExUnit.Case
  doctest CheeseMonitor

  test "greets the world" do
    assert CheeseMonitor.hello() == :world
  end
end

defmodule MathTest do
  use Assertion

  test "perform integer operations" do
    assert 1 + 1 == 2
    assert 2 - 1 == 1
    assert 3 > 5 
  end
end

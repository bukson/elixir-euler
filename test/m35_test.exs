defmodule M35Test do
  use ExUnit.Case
  doctest M35

  test "sanity check" do
    assert M35.of(10) == 23
  end
end

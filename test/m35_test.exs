defmodule M35Test do
  use ExUnit.Case
  doctest M35

  defp mod(n, d), do: rem(n, d)
	defp mod3(n), do: mod(n, 3)
	defp mod5(n), do: mod(n, 5)
	def naive_of(n) do
		1..n-1 
		|> Stream.filter(&mod5(&1) == 0 || mod3(&1) == 0)
		|> Enum.sum
	end

  test "sanity check" do
    assert M35.of(10) == 23
  end

  test "complex test" do
  	1..150
  	|> Enum.each(fn x -> assert M35.of(x) == M35Test.naive_of(x) end)
  end
end

defmodule M35 do
	defp mod(n, d), do: rem(n, d)
	defp mod3(n), do: mod(n, 3)
	defp mod5(n), do: mod(n, 5)
	def of(n) do
		1..n-1 
		|> Enum.filter(fn x -> mod5(x) == 0 || mod3(x) == 0 end)
		|> Enum.sum
	end
end
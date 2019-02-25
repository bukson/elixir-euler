defmodule M35 do
	defp sum_up_to(n), do: div(((n+1) * n), 2)
	defp partial_result(n, d), do: n |> div(d) |> sum_up_to |> Kernel.*(d)
	def of(n) do
		with first = partial_result(n-1, 3),
			 second = partial_result(n-1, 5),
			 third = partial_result(n-1, 15)
		do
			first + second - third
		end
	end
end
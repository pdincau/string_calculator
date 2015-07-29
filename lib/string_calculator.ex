defmodule StringCalculator do

  def add(string) do
    string |> String.split(["\n", ","]) |> sum
  end

  defp sum([""]), do: 0

  defp sum(list), do: sum(list, 0)

  defp sum([], accumulator), do: accumulator

  defp sum([h|tail], accumulator), do: sum(tail, accumulator + String.to_integer(h))

end

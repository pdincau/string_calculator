defmodule StringCalculator do

  def add("//" <> rest) do
    [custom_delimiter| [string]] = String.split(rest, ["\n"])
    add(string, [custom_delimiter])
  end

  def add(string) do
    string |> add(["\n", ","])
  end

  defp add(string, delimiters) do
    string |> String.split(delimiters) |> sum
  end

  defp sum([""]), do: 0

  defp sum(list), do: sum(list, 0)

  defp sum([], accumulator), do: accumulator

  defp sum([h|tail], accumulator), do: sum(tail, accumulator + String.to_integer(h))

end

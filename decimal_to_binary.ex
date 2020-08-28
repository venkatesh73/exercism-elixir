defmodule DecimalToBinary do
  def convert(decimal) do
    to_binary(div(decimal, 2), rem(decimal, 2))
  end

  defp to_binary(decimal, remainder, result \\ "")

  defp to_binary(0, remainder, result), do: (result <> to_string(remainder)) |> String.reverse()

  defp to_binary(decimal, remainder, result) do
    result = result <> to_string(remainder)
    to_binary(div(decimal, 2), rem(decimal, 2), result)
  end
end

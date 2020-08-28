defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text
    |> to_charlist
    |> Enum.reduce("", fn char, result ->
      cond do
        char in ?A..?Z ->
          result <> <<rem(char - ?A + shift, 26) + ?A>>

        char in ?a..?z ->
          result <> <<rem(char - ?a + shift, 26) + ?a>>

        true ->
          result <> <<char>>
      end
    end)
  end
end

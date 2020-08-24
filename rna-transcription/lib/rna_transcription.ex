defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @dna_to_rna %{?A => ?U, ?C => ?G, ?G => ?C, ?T => ?A}

  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    Enum.reduce(dna, [], fn dna, result ->
      [@dna_to_rna[dna] | result]
    end)
    |> Enum.reverse()
  end
end

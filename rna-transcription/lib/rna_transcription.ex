defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @dna_to_rna %{"A" => 'U', "C" => 'G', "G" => 'C', "T" => 'A'}

  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna
    |> Enum.reduce('', fn dna, result ->
      result ++ @dna_to_rna[<<dna>>]
    end)
  end
end

defmodule Recursion.Lang.RelativePronoun do
  @words [
    "who",
    "whom",
    "whose",
    "which",
    "that",
    "whichever",
    "whoever",
    "whomever",
    "whosever"
  ]

  def get do
    @words
    |> Enum.random()
  end
end

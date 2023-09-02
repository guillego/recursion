defmodule Recursion.RTN.FancyNoun do
  alias Recursion.Lang.Preposition
  alias Recursion.Lang.Verb
  alias Recursion.Lang.RelativePronoun
  alias Recursion.Random
  alias Recursion.RTN.OrnateNoun

  @adjective_after_adjective_weight 50
  @adjective_after_article_weight 70

  @initial_choices [
    {:end, 40},
    {:relative_pronoun, 20},
    {:preposition_fancy_noun, 40}
  ]

  @doc """
  Generates a Fancy Noun based on the defined patterns:

  - Article -> Adjective (n times) -> Noun
  - Article -> Noun
  - Adjective (n times) -> Noun
  - Noun

  ## Examples

      iex> Recursion.RTN.OrnateNoun.generate()
      "The ugly magical cat"
  """
  def generate do
    # [:ornate_noun]
    [Random.weighted_choice(@initial_choices), :ornate_noun]
    |> compose_structure()
    |> Enum.map(&word_from_atom/1)
    |> Enum.join(" ")
  end

  @doc """
  Continues deciding the structure of the ornate noun based on the current stack.

  Returns a list of atoms representing the chosen structure.
  """

  defp compose_structure([:end | rest]) do
    Enum.reverse(rest)
  end

  defp compose_structure([:relative_pronoun | _] = stack) do
    [Random.weighted_choice([{:verb_fancy_noun, 50}, {:fancy_noun_verb, 50}]) | stack]
    |> compose_structure()
  end

  defp compose_structure([:preposition_fancy_noun | rest]) do
    ([:end, :fancy_noun, :preposition] ++ rest)
    |> compose_structure()
  end

  defp compose_structure([:verb_fancy_noun | rest]) do
    ([:end, :fancy_noun, :verb] ++ rest)
    |> compose_structure()
  end

  defp compose_structure([:fancy_noun_verb | rest]) do
    ([:end, :verb, :fancy_noun] ++ rest)
    |> compose_structure()
  end

  defp word_from_atom(:preposition), do: Preposition.get()
  defp word_from_atom(:verb), do: Verb.get()
  defp word_from_atom(:relative_pronoun), do: RelativePronoun.get()
  defp word_from_atom(:ornate_noun), do: OrnateNoun.generate()
  defp word_from_atom(:fancy_noun), do: generate()
end

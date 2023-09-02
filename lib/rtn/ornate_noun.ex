defmodule Recursion.RTN.OrnateNoun do
  alias Recursion.Lang.Adjective
  alias Recursion.Lang.Noun
  alias Recursion.Random

  @adjective_after_adjective_weight 50
  @adjective_after_article_weight 70

  @initial_choices [
    {:article, 70},
    {:adjective, 25},
    {:noun, 5}
  ]

  @doc """
  Generates an ornate noun based on the defined patterns:

  - Article -> Adjective (n times) -> Noun
  - Article -> Noun
  - Adjective (n times) -> Noun
  - Noun

  ## Examples

      iex> Recursion.RTN.OrnateNoun.generate()
      "The ugly magical cat"
  """
  def generate do
    [Random.weighted_choice(@initial_choices)]
    |> decide_structure()
    |> Enum.map(&word_from_atom/1)
    |> adjust_for_an()
    |> Enum.join(" ")
  end


  @doc """
  Continues deciding the structure of the ornate noun based on the current stack.

  Returns a list of atoms representing the chosen structure.
  """

  defp decide_structure([:noun | _] = stack) do
    Enum.reverse(stack)
  end

  defp decide_structure([:adjective | rest]) do
    decide_if_next_adjective([:adjective | rest], @adjective_after_adjective_weight)
  end

  defp decide_structure([:article | rest]) do
    decide_if_next_adjective([:article | rest], @adjective_after_article_weight)
  end

  defp decide_if_next_adjective(current_stack, weight) do
    next_particle = if :rand.uniform(100) <= weight, do: :adjective, else: :noun
    decide_structure([next_particle | current_stack])
  end

  defp article do
    case :rand.uniform(2) do
      1 -> "the"
      _ -> "a"
    end
  end

  defp word_from_atom(:article), do: article()
  defp word_from_atom(:adjective), do: Adjective.get()
  defp word_from_atom(:noun), do: Noun.get()

  # Adjust for "an" before vowels (if needed)
  defp starts_with_vowel_sound?(word) do
    word =~ ~r/^[aeiouAEIOU]/
  end

  @doc """
  Adjusts the article "a" to "an" if the following word starts with a vowel sound.

  Returns a list of strings.
  """
  defp adjust_for_an(["a" | t]) do
    case t do
      [next_word | _] when is_binary(next_word) ->
        case starts_with_vowel_sound?(next_word) do
          true -> ["an" | t]
          false -> ["a" | t]
        end

      _ ->
        ["a" | t]
    end
  end

  defp adjust_for_an(words), do: words
end

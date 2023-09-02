defmodule Recursion.Random do
  def coin_flip do
    Enum.random([true, false])
  end

  @doc """
  Choose an element from a list based on provided weights.

  The function takes a list of tuples where the first element is the choice and the second is the weight of that choice.
  The weights must sum up to 100.

  This works by generating a cumulative list of weights.
  Given choices [{a, 10}, {b, 20}, {c, 70}], a cumulative list would look like [10, 30, 100].

  By comparing a random value between 1 and 100 to each value in the cumulative list, we can easily decide the weighted choice.
  If the random value is 15, then it lies between 10 and 30, which means b is chosen.

  ## Parameters

    - `choices`: A list of tuples. Each tuple should contain the choice as the first element and its weight as the second element.

  ## Examples

      iex> weighted_choice([{":apple", 30}, {":orange", 70}])
      :orange

      iex> weighted_choice([{":cat", 10}, {":dog", 20}, {":bird", 70}])
      :bird

  """
  def weighted_choice(choices) when is_list(choices) do
    total_weight = Enum.sum(for {_, weight} <- choices, do: weight)
    if total_weight != 100, do: raise("Weights do not add up to 100!")

    rand_value = :rand.uniform(100)

    choices
    # Cumulative weights
    |> Enum.scan(0, fn {_, weight}, acc -> acc + weight end)
    |> Enum.zip(choices)
    |> Enum.find_value(&choice_based_on_weight(&1, rand_value))
  end

  defp choice_based_on_weight({cumulative, {choice, _}}, rand_value)
       when rand_value <= cumulative,
       do: choice

  defp choice_based_on_weight(_, _), do: nil
end

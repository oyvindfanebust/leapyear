defmodule Leapyear do
  def is_leap_year?(year) do
    case divisible_by?(year, 400) do
      true -> true
      false -> case divisible_by?(year, 100) do
        true -> false
        false -> divisible_by?(year, 4)
      end
    end
  end

  defp divisible_by?(a, b) do
    rem(a, b) == 0
  end
end

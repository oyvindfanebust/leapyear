defmodule Wordwrap do
  def wrap(text, column) do
    text
    |> String.split(~r/ +/)
    |> Enum.map(&(maybe_chop(&1, column)))
    |> List.flatten
    |> Enum.join("\n")
  end

  defp maybe_chop(word, column) do
    case String.length(word) > column do
      true -> String.to_char_list(word)
              |> Enum.chunk(column)
              |> Enum.map(&to_string/1)
      false -> [word]
    end
  end
end

defmodule AskIntern do
  @moduledoc """
  Documentation for AskIntern.
  """

  @doc """
  Hello world.

  ## Examples

      iex> AskIntern.hello()
      :world

  """
  def main(args) do
    query = Enum.join(args, " ")
    IO.puts query
  end
end

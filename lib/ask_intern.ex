defmodule AskIntern do
  @moduledoc """
  Documentation for AskIntern.
  """

  @doc """
  A simple network client to connect to INTERN, send a query string,
  and print the response.

  """
  def main(args) do
    query = Enum.join(args, " ")
    opts = [active: false]
    {:ok, socket} = :gen_tcp.connect('localhost', 48813, opts)
    :ok = :gen_tcp.send(socket, query)
    case :gen_tcp.recv(socket, 0, 10000) do
      {:ok, response} -> IO.puts response
      {:error, reason} -> IO.puts "#{reason}"
    end
    :ok = :gen_tcp.close(socket)
  end
end

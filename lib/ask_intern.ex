defmodule AskIntern do
  @moduledoc """
  Documentation for AskIntern.
  """

  @doc """
  A simple network client to connect to INTERN, send a query string,
  and print the response.

  """
  def main(args) do
    #
    # Get the port from INTERN's configuration file.
    #
    config_folder = :filename.basedir(:user_config, "intern")
    config_file = Path.join(config_folder, "intern.json")
    json = case File.read(config_file) do
      {:ok, slug} -> slug
      {:error, reason} ->
        IO.puts "#{reason}"
        "{\"server\":{\"port\":48813}}"
    end
    config = Poison.decode!(json)
    port = config["server"]["port"]
    #
    # Send query to INTERN and print response.
    #
    query = Enum.join(args, " ")
    opts = [active: false]
    {:ok, socket} = :gen_tcp.connect('localhost', port, opts)
    :ok = :gen_tcp.send(socket, query)
    case :gen_tcp.recv(socket, 0, 10000) do
      {:ok, response} -> IO.puts response
      {:error, reason} -> IO.puts "#{reason}"
    end
    :ok = :gen_tcp.close(socket)
  end
end

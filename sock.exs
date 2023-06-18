
host = 'localhost'
port = 4040

{:ok, sock} = :gen_tcp.connect(host, port, [:binary])

:ok = :gen_tcp.send(sock, "Elixir Data")

:ok = :gen_tcp.close(sock)

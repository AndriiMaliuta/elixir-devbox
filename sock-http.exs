
host = 'example.com'
port = 80

{:ok, sock} = :gen_tcp.connect(host, port, [:binary])

try do
  
  :ok = :gen_tcp.send(sock, "GET / HTTP/1.1\nHost: example.com\r\n")
  
  {:ok, str} = :gen_tcp.recv(sock, 1024)
rescue
  e -> raise %{e | message: "#{e.message} (trying to parse http"}

end

IO.puts(str)

:ok = :gen_tcp.close(sock)

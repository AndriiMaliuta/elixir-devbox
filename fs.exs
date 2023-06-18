defmodule FS do

  def open_file do
    {:ok, file} = File.open("/home/_data/comments.log.2023-02-09.0", [:read])
    IO.read(file, :line)
    File.close(file)
  end

  def read_logs do
    lpath = "/home/_data/comments.log.2023-02-09.0"
    {:ok, binary} = File.read(lpath)
    IO.puts(binary)
  end
  
  FS.read_logs()

end

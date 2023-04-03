defmodule Start do

  IO.puts("Hello from Elixir!")

  name = "Petro"

  def sum(a, b) do
    a + b
  end

  def subb(a, b) do
    a - b
  end

  def summ2(a, b), do: a + b

  add2 = fn (a, b) -> a + b end

end


defmodule Second do

  import Start

  def greet(name) do
    IO.puts("Hello #{name}")
  end

  def some_f(name) do
    IO.puts("Hello from second")
  end

  [a,b,c] = [1,2,3]

  # greet/"Susya"

  def fall_velocity(distance) do
    :math.sqrt(2 * 9.8 * distance)
  end

  def mps_to_mph(mps) do
   2.23693629 * mps
  end

  def mps_to_kph(mps) do
   3.6 * mps
  end

  res = Enum.reduce([1, 2, 3, 4], fn x, acc -> x + acc end) # 10

  book = %{
    title: "Programming Elixir",
    author: %{
      first_name: "Dave",
      last_name: "Thomas"
    },
    year: 2018
  }

  title1 = book[:title]
  IO.puts ">> Book title is #{title1}"


  num1 = 10
  if num1 == 10 do
    IO.puts("num1 > 10")
  else
    ##
  end


  ## change Map
  new_book = %{ book | title: "Programming Elixir >= 1.6"}

  def get_language(user) do
    %{name: "Vasyl"}
  end

  #welcome_message = case get_language(user) do
  #  "IT" -> "Benvenuto #{user.name}"
  #  "ES" -> "Bienvenido #{user.name}"
  #  "DE" -> "Willkommen #{user.name}"
  #  _ -> "Welcome"
  #end


  #[1, 3, 5, 7, 8, 9] |> Enum.filter(fn x -> x > 5 end) |>
  #Enum.map(fn x -> x + 10 end) |> Enum.reduce(fn acc, x -> acc + x end) |>
  #IO.puts

  [1, 3, 5, 7, 8, 9]
    |> Enum.filter(fn x -> x > 5 end)
    |> Enum.map(fn x -> x + 10 end)
    |> Enum.reduce(fn acc, x -> acc + x end)
    |> IO.puts

end

## behavior and protocols
defmodule Protocollss do

  defprotocol Prontable do
    def to_csv(data)
  end

  defimpl Printable, for: Map do
    def to_csv(map) do
      Map.keys(map)
        |> Enum.map(fn k -> map[k] end)
	|> Enum.join(",")
    end
  end

end


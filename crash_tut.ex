defmodule M do
  def main do
    name = IO.gets("What is your name? ") |> String.trim
    IO.puts "Hello #{name}"
  end
  # iex
  # iex(1)> c("crash_tut.ex")
  # [M]
  # iex(2)> M.main
  # What is your name? Keithie
  # Hello Keithie
  # :ok

  def main_2 do
    data_stuff()
  end

  def data_stuff do
    my_int = 123
    my_float = 3.14
    my_ranges = 1..10
    IO.puts "my_int is Integer? #{is_integer(my_int)}"
    IO.puts "my_float is Float? #{is_float(my_float)}"
    IO.puts "my_range defines a range between 1 to 10"

    IO.puts "this is an atom? #{is_atom(:Pittsburgh)}"
    IO.puts "Atom with spaces #{is_atom(:"New York")}"
  end
  #
  # iex(4)> M.main_2
  # Integer true
  # :ok

  # for atoms, name is the same as value

  def main_3 do
    do_strings()
  end

  def do_strings do
    my_str = "My Setence"
    IO.puts "my_str is \"#{my_str}\""
    IO.puts "Length of my_str is #{String.length(my_str)}"

    longer_str = my_str <> " " <> "is now longer"
    IO.puts "longer_str is \"#{longer_str}\""
    IO.puts "Length of longer_str is #{String.length(longer_str)}"

    # === checks for value and data type are equal
    # == checks for value and IGNORE data type
    IO.puts "comparison between two strings."
    IO.puts "compare \"Egg\" === \"egg\" return in #{"Egg" === "egg"}"

    IO.puts "check if a strong contains another string"
    IO.puts "Does longer_str contain my_str? #{String.contains?(longer_str, my_str)}"
    IO.puts "Does longer_str contain the word 'now'? #{String.contains?(longer_str, "now")}"
  end
end

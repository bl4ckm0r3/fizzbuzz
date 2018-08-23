defmodule FizzBuzz do
  @moduledoc """
  Documentation for FizzBuzz in elixir, two implementations using a single function.
  """

  def fizzbuzzwith (n) do
    with fizz <- rem(n, 3),
         buzz <- rem(n, 5) do
      case {fizz, buzz, n} do
        {0, 0, _} -> "FizzBuzz"
        {0, _, _} -> "Fizz"
        {_, 0, _} -> "Buzz"
        {_, _, n} -> n
      end
    end
  end

  def fizzbuzz (n) do
    case {rem(n, 3), rem(n, 5), n} do
      {0, 0, _} -> "FizzBuzz"
      {0, _, _} -> "Fizz"
      {_, 0, _} -> "Buzz"
      {_, _, n} -> n
    end
  end
end

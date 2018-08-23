defmodule FizzBuzzTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest FizzBuzz

  setup_all do
   {:ok, result: [1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz", 11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz"]}
  end

  test "fizzbuzz works as expected for 20 numbers", state do
    assert Enum.map(1..20, &FizzBuzz.fizzbuzz/1) == state[:result]
  end

  test "fizzbuzzwith works as expected for 20 numbers", state do
   assert Enum.map(1..20, &FizzBuzz.fizzbuzzwith/1) == state[:result]
  end

  test "the two functions return the same results for 100 numbers" do
    with fb <- Enum.map(1..100, &FizzBuzz.fizzbuzz/1),
         fbwith <- Enum.map(1..100, &FizzBuzz.fizzbuzzwith/1) do
      assert fb == fbwith
    end
  end
end

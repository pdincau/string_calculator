defmodule StringCalculatorTest do
  use ExUnit.Case

  test "empty string is 0" do
    assert 0 == StringCalculator.add("")
  end

  test "1 is 1" do
    assert 1 == StringCalculator.add("1")
  end

  test "2 is 2" do
    assert 2 == StringCalculator.add("2")
  end

  test "1,2 is 3" do
    assert 1+2 == StringCalculator.add("1,2")
  end

  test "1\n2,3 is 6" do
    assert 1+2+3 == StringCalculator.add("1\n2,3")
  end

end

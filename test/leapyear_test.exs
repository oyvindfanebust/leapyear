defmodule LeapyearTest do
  use ExUnit.Case
  doctest Leapyear

  test "a leap year is divisible by 400" do
    assert Leapyear.is_leap_year?(2000)
  end

  test "a leap year is divisible by 100" do
    assert Leapyear.is_leap_year?(1900) == false
  end

  test "a leap year is divisible by 4" do
    assert Leapyear.is_leap_year?(1996)
  end
end

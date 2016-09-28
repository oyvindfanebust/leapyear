defmodule WordwrapTest do
  use ExUnit.Case
  doctest Leapyear

  test "word that exceeds column number are divided" do
    assert Wordwrap.wrap("testtest", 4) == "test\ntest"
  end

  test "words break at word boundries" do
    assert Wordwrap.wrap("test test", 6) == "test\ntest"
  end

  test "first line should not start with a space" do
    assert Wordwrap.wrap("test test", 4) == "test\ntest"
  end
end

require 'minitest/autorun'
require './lib/parser'

class ParserTest < MiniTest::Unit::TestCase

  def test_returns_elements_in_array
    old = "1 + 2"
    expected = [1, :+, 2]

    assert_equal expected, Parser.parse(old)
  end

  def test_handles_outside_parens
    old = "(1 + 2)"
    expected = expected = [1, :+, 2]

    assert_equal expected, Parser.parse(old)
  end

end
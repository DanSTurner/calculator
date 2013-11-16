require 'minitest/autorun'
require './lib/parser'

class ParserTest < MiniTest::Unit::TestCase

  def test_returns_reverse_polish_notation
    old = "1 + 2"
    expected = [:+, 1, 2]

    assert_equal expected, Parser.parse(old)
  end

  def test_handles_more_than_1_operation
    skip
    old = "1 + 2 + 3"
    expected = [:+, [:+, 1, 2], 3]

    assert_equal expected, Parser.parse(old)
  end

end
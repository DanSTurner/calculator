require 'minitest/autorun'
require './lib/parser'

class ParserTest < MiniTest::Unit::TestCase

  def test_returns_reverse_polish_notation
    old = "1 + 2"
    expected = [:+, 1, 2]

    assert_equal expected, Parser.parse(old)
  end

end
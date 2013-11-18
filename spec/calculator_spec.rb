require 'minitest/autorun'
require './lib/calculator'

class CalculatorTest < MiniTest::Unit::TestCase

  def test_addition
    old = "1 + 2"
    expected = 3

    assert_equal expected, Calculator.evaluate(old)
  end

end
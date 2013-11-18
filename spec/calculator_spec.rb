require 'minitest/autorun'
require './lib/calculator'

class CalculatorTest < MiniTest::Unit::TestCase

  def test_addition
    old = "1 + 2"
    expected = 3

    assert_equal expected, Calculator.evaluate(old)
  end

  def test_subtraction
    old = "1 - 2"
    expected = -1

    assert_equal expected, Calculator.evaluate(old)
  end

  def test_multiplication
    old = "3 * 2"
    expected = 6

    assert_equal expected, Calculator.evaluate(old)
  end

  def test_float
    old = "1.5 + 2.5"
    expected = 4

    assert_equal expected, Calculator.evaluate(old)
  end

  def test_division
    old = "4 / 2"
    expected = 2

    assert_equal expected, Calculator.evaluate(old)
  end

  def test_divide_by_zero
    old = "2 / 0"
    expected = "Divide by zero error"

    assert_equal expected, Calculator.evaluate(old)
  end

end
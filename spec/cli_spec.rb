require 'minitest/autorun'
require './lib/cli'
require 'mocha/setup'

class CLITest < MiniTest::Unit::TestCase
  def setup
    @CLI = CLI.new
  end

  def test_ask_for_expression
    @CLI.expects(:puts).with("Enter an expression to evaluate:")
    @CLI.ask
  end

  def test_expect_get_expression
    @CLI.expects(:gets).returns("1 + 1")
    assert_equal "1 + 1", @CLI.get_expression
  end

  def test_provide_answer
    @CLI.expects(:gets).returns("1 + 1")
    @CLI.expects(:puts).with(2.0)
    @CLI.evaluate_expression
  end

end
require 'minitest/autorun'
require './lib/cli'
require 'mocha/setup'

class CLITest < MiniTest::Unit::TestCase
  def setup
    @CLI = CLI.new
  end

  def test_expect_ask_for_expression
    mock_out = mock('object')
    mock_in = mock('object')
    mock_out.expects(:puts).with("Enter an expression to evaluate:")
    mock_in.expects(:gets).returns("1 + 1")
    mock_out.expects(:puts).with(2)
    @CLI = CLI.new(mock_in, mock_out)
    @CLI.run
  end


end
require 'minitest/autorun'
require './lib/cli'

class CLITest < MiniTest::Unit::TestCase
  def setup
    @CLI = CLI.new
  end

  def test_expect_ask_for_expression
    proc { @CLI.run }.must_output "Enter an expression to evaluate:\n"
  end
end
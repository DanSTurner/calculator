require './lib/calculator'

class CLI
  def initialize(input = $stdin, output = $stdout)
    @input = input
    @output = output
  end

  def run
    @output.puts "Enter an expression to evaluate:"
    a = @input.gets
    @output.puts Calculator.evaluate(a)
  end
end
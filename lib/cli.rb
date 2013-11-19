require './lib/calculator'

class CLI
  def ask
    puts "Enter an expression to evaluate:"
  end

  def get_expression
    gets
  end

  def evaluate_expression
    puts Calculator.evaluate(self.get_expression)
  end

  if __FILE__ == $PROGRAM_NAME
    inst = CLI.new
    inst.ask
    inst.evaluate_expression
  end

end
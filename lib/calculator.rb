require './lib/parser'

class Calculator

  def self.evaluate(input)
    expression = Parser.parse(input)
    return "Divide by zero error" if expression[2] == 0 && expression[1] == :/
    [expression[0], expression[2]].inject(expression[1])
  end
end
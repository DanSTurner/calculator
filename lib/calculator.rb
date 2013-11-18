require './lib/parser'

class Calculator

  def self.evaluate(input)
    expression = Parser.parse(input)
    [expression[0], expression[2]].inject(expression[1])
  end
end
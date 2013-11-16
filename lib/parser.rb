class Parser

  def self.parse(input)
    input = input.split
    output = []
    output.insert(0, input[1].to_sym)
    output.insert(1, input[0].to_i)
    output.insert(2, input[2].to_i)
  end
  # refactor recursively, give up RPN

end
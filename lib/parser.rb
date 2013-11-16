class Parser

  def self.parse(input)
    input = input.split
    output = []
    output << input.pop.to_i
    output.unshift(input.pop.to_sym)
    output << input.pop.to_i
  end

end
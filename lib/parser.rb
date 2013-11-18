class Parser

  def self.parse(input)
    input = input.split
    output = Array.new
    output << input[0].to_f
    output << input[1].to_sym
    output << input[2].to_f
    return output
  end

end
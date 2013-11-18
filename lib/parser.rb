class Parser

  def self.parse(input)
    input = input.split
    output = Array.new
    output << input[0].to_i
    output << input[1].to_sym
    output << input[2].to_i
  end

end
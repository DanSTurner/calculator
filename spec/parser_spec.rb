require 'rspec'
require './lib/parser'

describe Parser do

  describe "#parse" do

    it "should turn a string into a RPN array" do
      Parser.parse("1 + 2").should eql [:+, 1, 2]
    end


  end

end
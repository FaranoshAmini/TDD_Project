require_relative 'spec_helper'

describe Solver do
  before :each do 
    @solver = Solver.new
  end 
  
  describe "#factorial" do
  # The method called factorial takes one argument, an integer N, and returns the factorial for that number.
    it "should return the factorial of a number" do
      expect(@solver.factorial(0)).to eql(1)
      expect(@solver.factorial(2)).to eql(24)
    end

    it "should raise an exception if the number is negative" do
      expect(@solver.factorial(-1)).to eql("-1 is not a positive number")
      expect(@solver.factorial(-4).to eql("-4 is not a positive number"))
    end
  end

  describe "#reverse" do
    it "returns the reverse of the text" do
      expect(@solver.reverse("hello")).to eql("olleh")
    end
  end

  describe "#fizzbuzz" do
# When N is divisible by 3, return "fizz".
    it "returns the a string representation of an integer divisible by 3" do
      expect(@solver.fizzbuzz(9)).to eq("fizz")
    end

# When N is divisible by 5, return "buzz".
    it "should return a string representation of an integer divisible by 5" do
      expect(@solver.fizzbuzz(10)).to eq("buzz")
    end
  
# When N is divisible by 3 and 5, return "fizzbuzz".
    it "should return a string representation of an integer divisible by 3 and 5" do
      expect(@solver.fizzbuzz(15)).to eq("fizzbuzz")
    end

# Any other case, return N as a string (e.g. say N is 7 then return "7").
    it "should return N as a string" do
      expect(@solver.fizzbuzz(7)).to eq("7")
    end
end

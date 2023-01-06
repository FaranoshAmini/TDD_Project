# Project requirements
# Create a class called Solver.
# Create a method called factorial that takes one argument, an integer N, and returns the factorial for that number.
# The factorial is the multiplication of all integers from 1 to N and has the special case that the factorial of 0 is 1.
# This method only accepts 0 and positive integers, so if a negative integer is given it should raise an exception.
# Create a method called reverse that takes one argument, a string word, and returns word reversed (e.g. if word is "hello" it returns "olleh").
# Create a method called fizzbuzz that takes one argument, an integer N, and returns a string.
# The returned string is constructed following these rules:
# When N is divisible by 3, return "fizz".
# When N is divisible by 5, return "buzz".
# When N is divisible by 3 and 5, return "fizzbuzz".
# Any other case, return N as a string (e.g. say N is 7 then return "7").
# Remember to start with tests for all of the methods described above. Your commit history should prove that you have used TDD.

class Solver
  def factorial(integer)
    if integer.negative?
      raise ArgumentError, 'factorial cannot be called with a negative argument'
    elsif integer.zero?
      1
    else
      integer * factorial(integer - 1)
    end
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(integer)
    if (integer % 3).zero? && (integer % 5).zero?
      'fizzbuzz'
    elsif (integer % 3).zero?
      'fizz'
    elsif (integer % 5).zero?
      'buzz'
    else
      "#{integer}".to_s
    end
  end
end

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
      integer.to_s.to_s
    end
  end
end

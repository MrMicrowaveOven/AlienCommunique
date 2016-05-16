require_relative 'number_system_tests.rb'

def binary_to_decimal(string)
  # Convert to string if not already
  string = string.to_s
  array = string.chars
  array.each do |char|
    char = char.to_i
  end

  total = 0
  digit = string.length

  # Start at right
  array.each_with_index do |int, index|
    if int.to_i == 1
      total += 2 ** (digit-1)
    end
    digit -= 1
    # if index % 100000 == 0
    #   p index
    # end
  end
  # start at last digit, i = 0
  # If 1, add 2^1
  total
  #  + " in decimal"
end

def factors

end


def prime_factors(num)
  primes = []
  2.upto(Math.sqrt(num).ceil) do |idx|
    primes << idx if num % idx == 0 && is_prime?(idx)
  end
  primes
end
require_relative 'number_system.rb'

def full_test
  number_array = get_number_array

  # Find when counting ends
  end_of_counting = test_for_numericals(number_array)
  # Primes is the bit after that.
  primes = number_array[end_of_counting..-1]
  # p primes
  # Test for primes with all of them
  test_for_primes(primes)
end

def test_for_numericals(array)
  array.each_with_index do |el, index|
    if el != index + 1
      return index
      break
    end
  end
end


def test_for_primes(array)
  compare_array(primes_array(array.length), array)
end

def compare_array(array1, array2)
  if array1.length != array2.length
    p "Lengths do not match"
    return
  end
  array1.length.times do |i|
    if array1[i] != array2[i]
      p "They are not equal at #{array1[i]}"
    else
      p "They match at #{array1[i]}"
    end
  end
end

def primes_array(length)
  i = 2
  output = []
  until output.length == length
    if is_prime?(i)
      output << i
    end
    i += 1
  end
  return output
end

def is_prime?(num)
  return false if num < 2
  ((2...num).select {|factor| num % factor == 0}).empty?
end

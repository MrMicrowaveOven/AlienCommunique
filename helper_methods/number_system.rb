def get_number_array
  message = File.readlines 'number_system.txt'
  numbers = []

  message.each do |line|
    numbers.push(convert_binary(line))
  end

  return numbers

end

def convert_binary(line)
  number = 0
  iterator = 0

  while iterator < line.length
    number += 2**iterator if line[iterator] == 'X'
    iterator += 1
  end

  return number

end

def get_number_array
  message = File.readlines '../number_system_before_images/number_system.txt'
  numbers = []

  message.each do |line|
    numbers.push(convert_binary(line))
  end

  return numbers

end

def convert_binary_from_file(line)
  translation = File.readlines '../image_files/translation.txt'
  return convert_binary(translation[line - 1])
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

def convert_binary_num(bin_num)
  info = {}
  iterator = 0
  info["forward"] = 0
  info["backward"] = 0
  bin_num_string = bin_num.to_s

  while iterator < bin_num_string.length
    if bin_num_string[iterator] == "1"
      info["forward"] += 2**iterator
    end

    if bin_num_string[bin_num_string.length - 1 - iterator] == "1"
      info["backward"] += 2**iterator
    end

    iterator += 1
  end

  return info
end

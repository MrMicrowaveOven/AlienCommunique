message = File.readlines 'SETI_message.txt'

puts message[0].chomp.length
puts message[0].chomp.count('1')
puts message[0].chomp.count('0')

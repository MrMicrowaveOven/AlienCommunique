message = File.readlines 'SETI_message.txt'


message[0].each_char.with_index do |chr, idx|
  puts if idx % 359 == 0
  print ((chr === '0') ? '  ' : 'XX')
end

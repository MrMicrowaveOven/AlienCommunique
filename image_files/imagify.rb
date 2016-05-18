message = File.readlines '../SETI_message.txt'

translation = File.open("translation.txt", "w")

message[0].each_char.with_index do |chr, idx|
  puts if idx % 359 == 0
  print ((chr === '0') ? '   ' : 'XX')

  translation.puts if idx % 359 == 0 && idx != 0
  translation.print ((chr === '0') ? '  ' : 'XX')
end

translation.close

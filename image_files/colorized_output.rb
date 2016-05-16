require "colorize"
message = File.readlines 'SETI_message.txt'
colored = "   ".colorize(background: :white)

message[0].each_char.with_index do |chr, idx|
  puts if idx % 359 == 0 && idx != 0
  print ((chr === '0') ? '   ' : colored)
end


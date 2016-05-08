require_relative 'initial_decoding'

messages = File.readlines('../messages.txt')

adjusted = []
messages.each do |line|
	if line.start_with?("0") || line.start_with?("1")
		adjusted << line
	end
end

adjusted.each do |line|
	puts binary_to_decimal(line.to_i)
	puts binary_to_decimal(line.reverse.to_i)
	puts
end



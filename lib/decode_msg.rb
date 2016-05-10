require_relative 'initial_decoding'

messages = File.readlines('../messages.txt')

messages.each do |line|
	if line.start_with?("0") || line.start_with?("1")
		num = binary_to_decimal(line.reverse.to_i)
		puts num
		# p "prime factors: #{prime_factors(num)}"
	else
		puts line
	end
end


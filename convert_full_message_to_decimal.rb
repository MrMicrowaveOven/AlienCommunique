require_relative 'requireables.rb'
message = File.readlines 'SETI_message.txt'


p binary_to_decimal(message[0])

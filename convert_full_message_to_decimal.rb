require_relative 'requireables.rb'
message = File.readlines 'SETI_message.txt'

# This takes about 15 minutes to run.
p binary_to_decimal(message[0])

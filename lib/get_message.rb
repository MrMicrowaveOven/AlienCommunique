def get_string
  file = File.open("../SETI_message.txt", "rb")
  return file.read
end

require "./lib/file_reader.rb"
require "./lib/password_validator.rb"

puts 'Hi!'

password_validator = PasswordValidator.new
password_validator.call(FileReader.call('data/passwords.txt'))

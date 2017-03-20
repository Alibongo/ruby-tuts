require_relative 'file_reader'
require_relative 'http_reader'

# file_reader = FileReader.new
# file_reader.read_file('addressbook.txt')
# file_reader.find_ages('addressbook.txt')
# file_reader.find_names_ages('addressbook.txt')
http_reader = HttpReader.new
http_reader.get('http://api.postcodes.io/postcodes/tw91ep/nearest')

puts 'POST request'
http_reader.post('http://api.postcodes.io/postcodes', {postcodes: ['TW91EP','EC1V9JS']})

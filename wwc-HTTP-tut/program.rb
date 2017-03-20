require_relative 'file_reader' #this will ref FileReader - see blocked out code below
require_relative 'http_reader'

# ****   An object is an instance of a class.
# ****   A class has the deinition. But you need to
# ****     create an instance of it (ie object) to use it.


# ****    this is creating an object called file_reader
# file_reader = FileReader.new

#****     Here read_file method is invoked on the newly created file_reader instance
#****     addressbook.txt is passed in as a parameter

# file_reader.read_file('addressbook.txt')
# file_reader.find_ages('addressbook.txt')
# file_reader.find_names_ages('addressbook.txt')

# **** see HttpReader file and request
http_reader = HttpReader.new
# ****  GET request.
http_reader.get('http://api.postcodes.io/postcodes/tw91ep/nearest')

puts 'POST request'
http_reader.post('http://api.postcodes.io/postcodes', {postcodes: ['TW91EP','EC1V9JS']})

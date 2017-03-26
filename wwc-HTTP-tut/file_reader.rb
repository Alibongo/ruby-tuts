class FileReader
  #  A class holds the definition & logic
  #  A method is a block of reusable code that contains logic


# ------- Exercise 1 --------
# -searching for letter M only.

# read_file reads, then outputs what it has read.
# the parameter is filename
#   def read_file(filename)
#     File.read(filename).each_line do |line|
#     if (line.include?('m'))
#       puts line
#     end
#   end
#   end
# end

# ------ Exercise 2 -------
# -Finding Ages
# def read_file(filename)
#     File.read(filename).each_line do |line|
#     person = line.split(',')
#     age = person[1].strip
#       puts age
#     end
# end


#  ------ Exercise 3 -------
# -Finding city
def read_file(filename)
    File.read(filename).each_line do |line|
    person = line.split(',')
    city = person[2].strip
      puts city
    end
end

# -Finding writing age file
# the mode 'w' is passed in. AKA write.
# ages.txt gets assigned to ages_file
def find_ages(filename)
  ages_file = File.open('ages.txt', 'w')
  File.read(filename).each_line do |line|
    person = line.split(',')
    age = person[1].strip
    ages_file.puts(age)
  end
  ages_file.close
end

# ----- Exercise 4 -----
# -writing name and age

def find_names_ages(filename)
  output_file = File.open('names-ages.txt' , 'w')
File.read(filename).each_line do |line|
  person = line.split(',')
  name = person [0].strip
  age = person [1]. strip
output_file.puts("#{name} #{age}")
end
  output_file.close
end

# ----- Excercise 5 -----
# - HTTP Requests





end

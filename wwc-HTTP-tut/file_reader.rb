# class is defined as FileReader
# see where it ends.
class FileReader

#method takes parameter 'filename' which will be referenced
  def read_file(filename)
  #Below: this reads the file(referencing filename)
    File.read(filename).each_line do |line| #for each line, we assign it to a var called line
      # this begins a loop going over each line in the file.
    # do |line| begins a Ruby Block that contains code to handle Line var.
    person = line.split(',')
    # age = person[1].strip
    city = person[2].strip
    # puts is method for printing the particular line.
      puts city
    end
  end
  def find_ages(filename)
    ages_file = File.open('ages.txt','w')
    File.read(filename).each_line do |line|
    person = line.split(',')
    age = person[1].strip
    ages_file.puts(age)
    end
    ages_file.close
  end
  def find_names_ages(filename)

    output_file = File.open('names-ages.txt','w')
    File.read(filename).each_line do |line|
    person = line.split(',')
    age = person[1].strip
    name = person[0].strip
name_age = "#{name} #{age}"
  output_file.puts(name_age)
  end

    output_file.close

  end
end
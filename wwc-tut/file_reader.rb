class FileReader

  def read_file(filename)
    File.read(filename).each_line do |line|
    person = line.split(',')
    # age = person[1].strip
    city = person[2].strip
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

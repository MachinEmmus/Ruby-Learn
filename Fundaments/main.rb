file_location = "sample.txt"
file = File.open(file_location)
content = file.read

puts content

# Wrinting in the file

new_content = "New Content!"
File.write(file_location, new_content, mode: "a")
file = File.open(file_location)
puts "\n"
content2 = file.read

puts content2

input_file = ARGV.first

def print_all(f)
	puts f.read
end

def rewind(f)
	f.seek(0) #rewind to 0 byte position, ie. start of file
end

def print_a_line(line_count, f)
	puts "#{line_count}, #{f.gets.chomp}"  # output 
end

current_file = open(input_file)

puts "first let's print the whole file:\n"

print_all(current_file)

puts "now let's rewind, kind of like a tape."

rewind(current_file)

puts "let's print three lines:"

current_line = 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)

current_line = current_line + 1
print_a_line(current_line, current_file)
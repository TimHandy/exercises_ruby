filename = ARGV.first

puts "we're going to erase #{filename}"
puts "if you odn't want that, hit CTRL-C (^C)."
puts "if you do want that, hit RETURN."

$stdin.gets

puts "opening the file..."
target = open(filename, 'w')

puts "truncating the file. Goodbye!"
target.truncate(0)  #truncates to make file at most '0' bytes long.

puts "now I'm going to ask you for three lines"

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "i'm going to write these to the file"

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "and finally, we close it."
target.close

# now to read the file

#filetxt = target.read

# puts contents of file
puts open(filename).read

# close file
open(filename, 'w').close
# run with a file name as an argument at the command line.

filename = ARGV.first  # create filename variable with the first argument passed at the command line


txt = open(filename)  # create variable 'txt' "adsfa" "asdf"

puts "Here's your file #{filename}:"
print txt.read

print "Type the filename again: "
file_again = $stdin.gets.chomp

txt_again = open(file_again)

print txt_again.read

# Have your script also do a close() on the txt and txt_again variables. It's important to close files when you are done with them.

# close -- Closes the file. Like File->Save.. in your editor.
# read -- Reads the contents of the file. You can assign the result to a variable.
# readline -- Reads just one line of a text file.
# truncate -- Empties the file. Watch out if you care about the file.
# write(stuff) -- Writes stuff to the file.
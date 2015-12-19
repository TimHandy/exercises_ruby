
user_input = ""
puts
while user_input != 3

	puts
	puts "1. Draw a box"
	puts "2. Draw a triangle"
	puts
	puts "3. Quit"
	puts

	print "Enter your selection: "
	user_input = gets.to_i
	puts

	if user_input == 1
		puts "Drawing a box"
	elsif user_input == 2
		puts "Drawing a triangle"
	elsif user_input == 3
		puts "Quitting"
	else #any other anything
		puts "you're a dummy. Enter a number between 1 and 3!"
	end

end
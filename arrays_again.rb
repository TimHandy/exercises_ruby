


=begin
lines = []
user_line = " "
while user_line != ""
	print "please enter a line (blank line to quit): "
	user_line = gets.chomp
	lines << user_line
end

puts lines.reverse
=end




lines = []
user_line = " "
total = 0
while user_line != 0  # can't be " " as anything blank with .to_i = 0. 0 is not blank!
	print "please enter a number (blank line to quit): "
	user_line = gets.to_i  # .to_i does auto chomp
	lines << user_line
	total += user_line
end

puts lines.reverse
puts total
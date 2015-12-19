=begin
Leap years. Write a program that asks for a starting year and an
ending year and then puts all the leap years between them (and
including them, if they are also leap years). Leap years are years
divisible by 4 (like 1984 and 2004). However, years divisible by
100 are not leap years (such as 1800 and 1900) unless they are
also divisible by 400 (such as 1600 and 2000, which were in fact
leap years). 
=end




puts "what's the start year?"
start_year = gets.chomp.to_i

puts "what's the end year?"
end_year = gets.chomp.to_i

puts "\nleap years:"

range = (start_year..end_year)

range.each do |year| 
	if (year % 4 == 0) && (year % 100 != 0) || (year % 400 == 0) 
	puts year 
	end
end




# From the book:

# puts 'Pick a starting year (like 1973 or something):'
# starting = gets.chomp.to_i

# puts 'Now pick an ending year:'
# ending = gets.chomp.to_i

# puts 'Check it out... these years are leap years:'

# (starting..ending).each do |year|
#   next if year%4 != 0  # 'next' goes to next iteration
#   next if year%100 == 0 && year%400 != 0
#   puts year
# end

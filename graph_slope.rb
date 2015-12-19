print "Enter  x1: "
x1 = gets.chomp

print "Enter  y1: "
y1 = gets.chomp

print "Enter  x2: "
x2 = gets.chomp

print "Enter  y2: "
y2 = gets.chomp

puts "Coordinates are #{x1},#{y1} and #{x2},#{y2}"


if x1 == x2 
  	puts "Line is vertical"
elsif y1 == y2 
	puts "Line is horizontal"
elsif ((y1 > y2) && (x1 < x2))
		puts "Line is negative"
elsif ((y1 < y2) && (x2 > x1))
	puts "Line is positive"
end
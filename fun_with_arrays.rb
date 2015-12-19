numbers = [90, 26, 20, 85, 93, 14, 56, 98]

#puts numbers.count
#puts numbers.max


# for finding .max the long way with a while loop

count = 0
largest = numbers[0]
while count < numbers.count
	if largest < numbers[count]
		largest = numbers[count]
	end
count += 1
end

puts largest




# same but with .each

largest = numbers[0]
numbers.each do | number |
	if largest < number
		largest = number
	end
end
puts largest



# print only numbers greater than 20

numbers.each do | number |
	if number > 20
		puts number
	end
end


puts numbers.sort

puts numbers.sort.reverse




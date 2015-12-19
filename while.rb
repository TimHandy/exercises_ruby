# While loop


# count numbers up to 100 even.

count = 2
while count <= 100
					    # count < 11
					    # count != 10 (this one is dangerous, too easy to break, it's too specific, easy to miss and end up with an endless loop)
					    # count <= 10 
   if count.even?
   	puts count
   end
    count += 2


end



# Draw a box
puts
print "Enter size of box "
size = gets.to_i


puts "*" * size

count = size
while count >= 3
	puts "*" + " " * (size - 2) + "*"
	count -= 1
end


puts "*" * size

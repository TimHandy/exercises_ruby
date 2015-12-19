# Building and sorting an array. Write the program that asks us to type as many
# words as we want (one word per line, continuing until we just
# press Enter on an empty line) and then repeats the words back
# to us in alphabetical order. Make sure to test your program thor-
# oughly; for example, does hitting Enter on an empty line always
# exit your program? Even on the first line? And the second? Hint:
# There’s a lovely array method that will give you a sorted version of
# an array: sort. Use it!


puts "start typing, one word per line, then enter after each"
puts "blank enter completes"

def sort arr
	rec_sort arr, []
end

#define a sort method that takes an array as a parameter
#inside the sort method, have it call a recursive sort method that takes
# two parameters to be defined later

def rec_sort unsorted, sorted
	if unsorted.length <= 0
		return sorted
	end

	#rec_sort method takes an unsorted array and a sorted array
  	#checks to see if the unsorted array is equal to or less than 0
  	#essentially checking if it is empty
  	#if it is empty, then just return the sorted array and end the whole process

	# so if we got here we still have work to do

	smallest = unsorted.pop
	still_unsorted = []

	#sets a variable smallest equal to the last element of the unsorted array
 	#also removes that element from the unsorted array
 	#initializes an empty array called still_unsorted

	unsorted.each do |tested_object|
		if tested_object < smallest
			still_unsorted.push smallest
			smallest = tested_object
		else
			still_unsorted.push tested_object
		end
	end

	#after we've established that the unsorted array is not empty, we are going to iterate through it to add words to the sorted array
  	#going through the unsorted array, we call each element tested_object
  	#if tested_object is less than (lexigcoraphically) smallest, we push smallest to the still_unsorted array, and we make smallest equal to tested_object
  	#if tested_object > smallest, then we push tested_object into the still_unsorted array
  	#this is creating the still_unsorted array

	# Now "smallest" really does point to the smallest element that
	# "unsorted" contained, and all the rest of it is in "still_unsorted"
	sorted.push smallest

	rec_sort still_unsorted, sorted
end

startarray = [] #starting empty array to put strings into
request = gets.chomp.downcase #request for words to fill array
while request != '' #check to see if anything to input into array, as long as there is a string the program keeps requesting input
  startarray.push request #put any input into the end of the starting empty array
  request = gets.chomp.downcase #requests string to fill array, makes the string lowercase, and provides information back into conditional
end

#puts(sort(['can', 'fee', 'singing', 'like', 'a', 'can']))

puts(sort(startarray))











# manual way of sorting inputted words

puts "enter words, one per line, press ENTER after each word"
puts "press ENTER on a blank line to finish and sort the words"

new_words = []
input = "null"
while input != ""
	input = gets.chomp
	new_words << input
end	

sorted = []
still_unsorted = []

# compare words in new_words to find shortest
# pop off that word and append to sorted
# go back and find the next shortest in new_words

puts "end of program"



def sort arr  # define the sort method, and require an argument 'arr'
  rec_sort arr, []  # Don't think I fully understand what this is saying? 'rec_sort' (an as yet undefined method), pass it two arguments, 'arr' and an empty array? 
end

def rec_sort unsorted, sorted  # define rec_sort and require two arguments: the arrays 'unsorted', and 'sorted'.
  if unsorted.length <= 0  # if the number of entries in the unsorted array is  less than or equal to 0... Where did we create the 'unsorted' array?
    return sorted  # then the return value is 'sorted'.
  end
  
  smallest = unsorted.pop  # remove the last value in the array 'unsorted' and assign to variable 'smallest'. This leaves the 'unsorted' array one item shorter.
  still_unsorted = []  # create an empty array called 'still_unsorted'.

  unsorted.each do |tested_object|  # for each entry in the unsorted array,
    if tested_object < smallest  # if that entry is shorter in number of characters than the variable 'smallest',
      still_unsorted.push smallest # add the 'smallest' value to the end of 'still_unsorted' array.
      smallest = tested_object # assign the 'tested_object' to the 'smallest' variable, replacing the original value.
    else
      still_unsorted.push tested_object  # add the 'tested_object' to the end of the 'still_unsorted' array.
    end
  end
  # Now "smallest" really does point to the
  # smallest element that "unsorted" contained,
  # and all the rest of it is in "still_unsorted".
  sorted.push smallest  # add the value assigned to 'smallest' to the end of the 'sorted' array. 
  rec_sort still_unsorted, sorted  # this is the recursion bit. Call rec_sort (itself) on the 'still_unsorted' and 'sorted' arrays?
end

puts(sort(['can','feel','singing','like','a','can']))



# words = []
# input = "null"
# while input != ""
#   input = gets.chomp
#   words.push input
# end

# # repeats words back in alphabetical order


# puts words.sort
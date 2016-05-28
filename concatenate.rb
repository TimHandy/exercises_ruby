# create a method that accepts an array of integers and produces the smallest possible number when concatenating all of the numbers.

# lowest_number([23, 550, 1, 80])  # => 12355080

# problem is the sort has to be based on the first digit, not just sort in order. And also, what happens if there are two or more numbers starting with the same digit?

def lowest_number(arr)
  puts arr.map(&:to_s).sort.join.to_i
end


lowest_number([23, 550, 1, 80, 12222])

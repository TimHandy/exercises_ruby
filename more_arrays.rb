states = [
"Alabama",
"Alaska",
"Arizona",
"Arkansas",
"California",
"Colorado",
"Connecticut",
"Delaware",
"Florida",
"Georgia",
"Hawaii",
"Idaho",
"Illinois",
"Indiana",
"Iowa",
"Kansas",
"Kentucky",
"Louisiana",
"Maine",
"Maryland",
"Massachusetts",
"Michigan",
"Minnesota",
"Mississippi",
"Missouri",
"Montana",
"Nebraska",
"Nevada",
"New Hampshire",
"New Jersey",
"New Mexico",
"New York",
"North Carolina",
"North Dakota",
"Ohio",
"Oklahoma",
"Oregon",
"Pennsylvania",
"Rhode Island",
"South Carolina",
"South Dakota",
"Tennessee",
"Texas",
"Utah",
"Vermont",
"Virginia",
"Washington",
"West Virginia",
"Wisconsin",
"Wyoming",
]

puts states[3]
puts states.length
puts states.count
# puts states

=begin
states.each do |states|
	puts states
end
=end

# should be able write these while loops in my sleep.
=begin
count = 0
while count < states.length # if this was <= states.length it would iterate through one too many times and put an extra line in. This is a common progamming error (buffer overflow) and is used to exploit websites.
puts states[count] # the 'count' in here increments each time to print the location in the array.
	count += 1
end
=end



=begin
puts "start"
count = states.length - 1  # need the - 1 otherwise will print a blank line at the start. similar problem to the above and is a common error. this is because of the counting from 0 issue.
while count >= 0
	puts "#{count +1}. #{states[count]}"
  	count -= 1
end
puts "end"
=end




states.each_with_index do |states, index|
	puts "#{index + 1}. #{states}"
end
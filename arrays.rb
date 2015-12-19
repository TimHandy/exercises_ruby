# while line != ""
# user enter a line of text
# end
# print out all the lines in reverse order

=begin
storage1

line = "nothing"
while line != ""
	print "Enter a line, blank to quit: "
	line = gets.chomp
end

puts line
=end



# Rock, Paper, Scissors

user_choice = ""
until user_choice == "rock" or user_choice == "paper" or user_choice == "scissors"

	print "Choose rock, paper or scissors with the letter r, p, or s: "
	user_choice = gets.chomp

	rps = ["rock", "paper", "scissors"]
	computer_random = rand(0..2)
	computer_choice = rps[computer_random]

	if user_choice == "r"
		user_choice = "rock"
	elsif user_choice =="p"
		user_choice = "paper"
	elsif user_choice == "s"
		user_choice = "scissors"
	else puts "you chose the wrong letter dummy"
	end
end


puts "your choice = #{user_choice}"
puts "computer choice = #{computer_choice}"

if (user_choice == "rock") && (computer_choice == "paper")
	puts "you lose!"

elsif (user_choice == "paper") && (computer_choice == "scissors")
	puts "you lose!"

elsif (user_choice == "scissors") && (computer_choice == "rock")
	puts "you lose!"

elsif user_choice == computer_choice
	puts "Draw!"

else puts "you win!"
end





p [1, 2, 3, 4].find_all { |number| number.odd? }
p [1, 2, 3, 4].find_all { |number| true }
p [1, 2, 3, 4].find_all { |number| false }
p [1, 2, 3, 4].find { |number| number.even? }
p [1, 2, 3, 4].reject { |number| number.odd? }
p [1, 2, 3, 4].all? { |number| number.odd? }
p [1, 2, 3, 4].any? { |number| number.odd? }
p [1, 2, 3, 4].none? { |number| number > 4 }
p [1, 2, 3, 4].count { |number| number.odd? }
p [1, 2, 3, 4].partition { |number| number.odd? }
p ['$', '$$', '$$$'].map { |string| string.length }
p ['$', '$$', '$$$'].max_by { |string| string.length }
p ['$', '$$', '$$$'].min_by { |string| string.length }

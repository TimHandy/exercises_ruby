# Daffy Ducks your phrases
print "Thtring, pleathe!: "  # ask for string
user_input = gets.chomp  # chop of the Enter key
if user_input.empty?  # checks for if they just hit enter and propmts again.
  puts "you need to enter thomething."
  print "Thtring, pleathe now!: "
  user_input = gets.chomp
end


user_input.downcase!  #  changes user input to all lowercase, so don't need to search for s and S.


if user_input.include? "s"  # checks for 's' in the input
  user_input.gsub!(/s/, "th")  # Global Substitution for 'th' for 's'
else
  puts "Nothing to do here!"
end
  
puts "Your string is: #{user_input}"
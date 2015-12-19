# Deaf grandma
bye = 0
puts "say something to grandma:"
input = gets.chomp
#input = 'null'
while bye < 2  #waits for 3 consecutive 'buy' entries - it's not '< 3' because of first input before the loop begins.
  if input == "bye"
    bye += 1
  else bye = 0
  end
  if input == input.upcase
  	puts "no, not since " + (1930 + rand(21)).to_s + "!"
  else
  	puts "huh!? SPEAK UP SONNY!"
  end
  input = gets.chomp
end
puts "bye bye"




=begin
What if Grandma doesn’t want you to leave?
When you shout BYE, she could pretend not to hear you.
Change your previous program so that you have to shout BYE three times in a row.
Make sure to test your program: if you shout BYE three times but not in a row, you should still be talking to Grandma.
=end



# input = ""pPBTGvOlIgyZEqqolSb1
# while input != "BYE"
# 	puts "say something to grandma..."
# 	input = gets.chomp
# 	if input == input.upcase
# 		puts "No, NOT SINCE " + rand(1935..1970).to_s  # generates random date from 1935-1970 and converts to string
# 	elsif
# 		puts "HUH?! SPEAK UP, SONNY!"
# end
# end
# puts "BYEBYE"

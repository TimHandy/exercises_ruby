def ask question # defines the method 'ask' and requires a parameter 'question'
	while true  # while what is true?
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no') # forces user to enter an answer, else states 'Please answer "yes" or "no".'
			if reply == 'yes' # says "if previous line has entry, and if.."
				answer = true
			else
				answer = false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end

answer # This is what we return (true or false).
end


puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?' # Ignore this return value
ask 'Do you like eating burritos?' # And this one
wets_bed = ask 'Do you wet the bed?' # Save this return value
ask 'Do you like eating chimichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata?'
ask 'Do you like eating flautas?'
puts 'DEBRIEFING:'
puts 'Thank you for...'
puts
puts wets_bed

# Should output:
# => Hello, and thank you for...
# => 
# => Do you like eating tacos?
# => yes
# => Do you like eating burritos?
# => yes
# => Do you wet the bed?
# => no way!
# => Please answer "yes" or "no".
# => Do you wet the bed?
# => NO
# => Do you like eating chimichangas?
# => yes
# => Do you like eating sopapillas?
# => yes
# => Just a few more questions...
# => Do you like drinking horchata?
# => yes
# => Do you like eating flautas?
# => yes
# => DEBRIEFING:
# => Thank you for...
# => false


# or could be written:

# def ask question
# 	while true
# 		puts question
# 		reply = gets.chomp.downcase
# 		return true
# 		if reply == 'yes'
# 		return false if reply == 'no'
# 		puts 'Please answer "yes" or "no".'
# 	end
	
# 	answer	#	This is what we return (true or false).
# end
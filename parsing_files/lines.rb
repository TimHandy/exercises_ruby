def find_adjective(string)  # We'll call this method below, to find adjectives within each review.
	words = string.split(" ")  # Break the string into an array of words.
	index = words.find_index("is") # Find the index of the word “is".
	words[index + 1]  # Return the word following “is".
end

lines = []  # We need to create this variable outside the block.
File.open("reviews.txt") do |review_file|  # Open the file and automatically close it when we're done.
	lines = review_file.readlines  # Read every line in the file into an array.
end

relevant_lines = lines.find_all { |line| line.include?("Truncated") }  # Find lines that include the movie name.
reviews = relevant_lines.reject { |line| line.include?("--") }  # Exclude reviewer bylines.

adjectives = reviews.map do |review|  # Process each review.
	adjective = find_adjective(review)  # Find the adjective.
	"'#{adjective.capitalize}'"  # Return the adjective, capitalized and surrounded by quotes.
end

puts "The critics agree, Truncated is:"
puts adjectives

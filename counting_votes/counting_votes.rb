# p226 Head First Ruby

lines = []
File.open( 'votes.txt' ) do |file|
  lines = file.readlines
end

votes = Hash.new(0)  # sets a default value of 0 for all non entries, so that we can increment without hitting a 'nil'.
lines.each do |line|
	name = line.chomp.upcase
	votes[name] += 1
end

votes.each do |name, count|
	puts "#{name}: #{count}"
end

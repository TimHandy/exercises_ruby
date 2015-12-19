

names = {
	"Dave" => "Jones",
	"Joe" => "Stromboli",
	"Mary" => "Parker",
}

puts names["Dave"]
puts names["Mary"]


names.each do | key, value |
	puts key + " " + value
end



names.each_key do | value |   # .each_key gives the key in the key:value pair. So regardless of what's between the | | it will return the value not the key
	puts value # interesting to note that in this example, value becomes an array. can see this if you 'puts value.class'
end




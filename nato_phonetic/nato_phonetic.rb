def nato(word)
  letters =  {
    "A"=> "Alpha",  "B"=> "Bravo",   "C"=> "Charlie",
    "D"=> "Delta",  "E"=> "Echo",    "F"=> "Foxtrot",
    "G"=> "Golf",   "H"=> "Hotel",   "I"=> "India",
    "J"=> "Juliett","K"=> "Kilo",    "L"=> "Lima",
    "M"=> "Mike",   "N"=> "November","O"=> "Oscar",
    "P"=> "Papa",   "Q"=> "Quebec",  "R"=> "Romeo",
    "S"=> "Sierra", "T"=> "Tango",   "U"=> "Uniform",
    "V"=> "Victor", "W"=> "Whiskey", "X"=> "X-ray",
    "Y"=> "Yankee", "Z"=> "Zulu"
  }
  arr = []
  word.upcase.split('').each do |el|
  arr << letters[el]
  end
  arr.each do |el|
    print el + " "
  end
end


nato("boobs")

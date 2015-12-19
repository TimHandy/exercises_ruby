# Old-school Roman numerals. In the early days of Roman numer-
# als, the Romans didn’t bother with any of this new-fangled sub-
# traction “IX” nonsense. No sir, it was straight addition, biggest
# to littlest—so 9 was written “VIIII,” and so on. Write a method
# that when passed an integer between 1 and 3000 (or so) returns a
# string containing the proper old-school Roman numeral. In other
# words, old_roman_numeral 4 should return 'IIII'. Make sure to test
# your method on a bunch of different numbers. Hint: Use the inte-
# ger division and modulus methods on page 37.
# For reference, these are the values of the letters used:
# I = 1
# V = 5
# X = 10
# L = 50
# C = 100
# D = 500
# M = 1000


# “Modern” Roman numerals. Eventually, someone thought it would
# be terribly clever if putting a smaller number before a larger 
# one My bet is that it was a stone carver in some year that ended 
# in a 9, tasked with dating public buildings or statues or something.
# meant you had to subtract the smaller one. As a result of this
# development, you must now suffer. Rewrite your previous method
# to return the new-style Roman numerals so when someone calls
# roman_numeral 4 , it should return 'IV' .


# puts "Input an integer:"

# number = gets.to_i

# # if number can be divided by 1000, output the remainder and add M to an array
# if number % 1000 == 0
# 	m = number / 1000
# 	remainder = number % 1000
# else puts "fail"
# end
# puts m
# puts "roman numeral is #{"M" * m}"
# puts remainder
# # number = the remainder
# # repeat





def old_roman_numeral num  #defines a method and argument of a number to test
raise 'Must use positive integer' if num <= 0
roman = ''  # sets string to nil
roman << 'M' * (num / 1000) # an integer < 1000 / 1000 == 0. "m" * 0 == "", hence if num < 1000 nothing gets added to the string 'roman'
puts roman.class  # my little test, to output the class type; it is indeed a string
roman << 'D' * (num % 1000 / 500) # how many 500's are there left over after dividing the remainder of num % 1000?
puts roman # my test to see how the string 'roman' is increasing in size
roman << 'C' * (num % 500 / 100)
puts roman  # my test to see how the string 'roman' is increasing in size
roman << 'L' * (num % 100 / 50) 
roman << 'X' * (num % 50 / 10)
roman << 'V' * (num % 10 / 5)
roman << 'I' * (num % 5 / 1)
roman
end
puts(old_roman_numeral(6224))



# new roman numerals
def roman_numeral num
  thous = (num / 1000)
  hunds = (num % 1000 / 100)
  tens = (num % 100 / 10)
  ones = (num % 10 )

  roman = 'M' * thous

  if hunds == 9
    roman = roman + 'CM'
  elsif hunds == 4
    roman = roman + 'CD'
  else
    roman = roman + 'D' * (num % 1000 / 500)
    roman = roman + 'C' * (num % 500 / 100)
  end

  if tens == 9
    roman = roman + 'XC'
  elsif tens == 4
    roman = roman + 'XL'
  else
    roman = roman + 'L' * (num % 100 / 50)
    roman = roman + 'X' * (num % 50 / 10)
  end

  if ones == 9
    roman = roman + 'IX'
  elsif ones == 4
    roman = roman + 'IV'
  else
    roman = roman + 'V' * (num % 10 / 5)
    roman = roman + 'I' * (num % 5 / 1)
  end
  roman
end

puts(roman_numeral(1999))

















# def old_roman num
# 	roman = ''

# 	roman = roman + 'M' * (num        / 1000)
# 	roman = roman + 'D' * (num % 1000 / 500)
# 	roman = roman + 'C' * (num % 500 / 100)
# 	roman = roman + 'L' * (num % 100 / 50)
# 	roman = roman + 'X' * (num % 50 / 10)
# 	roman = roman + 'V' * (num % 10 / 5)
# 	roman = roman + 'I' * (num % 5 / 1)
# 	roman
# end


# puts old_roman 10
# puts old_roman 55
# puts old_roman 1001
# puts old_roman 2050
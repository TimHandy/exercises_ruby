# Write a method that takes a string and returns a string of all alphabetic chars in the original string separated by a single space.


#def smash('hello, world!')  => 'helloworld'

def smash(string)
  p string.gsub!(/\W+/,'').chars.join(' ')
end


smash('hello, world!')

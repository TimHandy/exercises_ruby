# take a load of text as input and return a hash with the individual word counts of each unique word. Ignore punctuation and case.

# word_count(paragraph)  # => { 'then => 2', 'and' => 15, ...}


para = <<-TEXT
Matsumoto has has said that Ruby is designed for programmer productivity and fun, following the principles of good user interface design. At a Google Tech Talk in 2008 Matsumoto further stated, "I hope to see Ruby help every programmer in the world to be productive, and to enjoy programming, and to be happy. That is the primary purpose of Ruby language." He stresses that systems design needs to emphasize human, rather than computer, needs:

Often people, especially computer engineers, focus on the machines. They think, "By doing this, the machine will run fast. By doing this, the machine will run more effectively. By doing this, the machine will something something something." They are focusing on machines. But in fact we need to focus on humans, on how humans care about doing programming or operating the application of the machines. We are the masters. They are the slaves.
matsumoto
TEXT




def word_count(string)
  arr_words = string.downcase.gsub(/[^a-z0-9\s]/i, '').split(' ')
  count = Hash.new(0)
  arr_words.each do |word|
    count[word] += 1
  end
  count
end


p word_count(para)

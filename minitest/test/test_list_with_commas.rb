require 'minitest/autorun'  # Load Minitest
require 'list_with_commas'  # Load the class we're testing

class TestListWithCommas < Minitest::Test

  def setup
    @list = ListWithCommas.new
  end

  def test_it_prints_one_word_alone
    @list.items = [ 'apple' ]  # Set up a list with one item
    assert_equal('apple', @list.join,)  # We should expect a string consisting of only that item
  end

  def test_it_joins_two_words_with_and  # First test method
    @list.items = ['apple', 'orange']  # Test "join" using two items
    assert_equal('apple and orange', @list.join)   # the test will pass IF "join" returns the expected string
  end

  def test_it_joins_three_words_with_commas   # Second test method
    @list.items = ['apple', 'orange', 'pear']  # Test "join" using three items
    assert_equal('apple, orange, and pear', @list.join)  # The test will pass IF "join" returns the expected string
  end

end

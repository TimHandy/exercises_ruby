require 'minitest/autorun'  # Load Minitest
require 'person'  # Load the class we're testing

class TestPerson < Minitest::Test   # Define a test class

  def test_introduction   # Define a test method
    person = Person.new   # Set up a person
    person.name = 'Bob'   # Set the person's name to Bob
    assert(person.introduction == 'Hello, my name is Bob!')   # A Person named Bob should return this string.
  end

end

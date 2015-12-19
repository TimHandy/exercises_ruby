require 'minitest/autorun' # Load MiniTest

class TestSomething < Minitest::Test # Create a subclass of Minitest::Test

  def test_true_assertion  # First test method
    assert(true)  # This test will pass
  end

  def test_false_assertion  # Second test method
    assert(false)   # This test will fail
  end

end

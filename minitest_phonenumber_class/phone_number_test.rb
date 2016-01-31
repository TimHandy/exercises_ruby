require 'minitest/autorun'
require_relative 'phone_number'

class PhoneNumberTest < MiniTest::Unit::TestCase
  def setup; end

  # def test_method_1
    # assert_equal(expected, actual)
    # assert_empty []
    # assert_includes collection, obj
    # assert_instance_of klass, obj
    # refute_*
  # end


  def test_cleans_number
    p_number = PhoneNumber.new('(123) 456-7890')
    assert_equal('1234567890', p_number.number)
  end

  def test_cleans_number_with_dots
    p_number = PhoneNumber.new('123.456.7890')
    assert_equal('1234567890', p_number.number)
  end

  def test_display_number
    p_number = PhoneNumber.new('1234567890')
    assert_equal('(123) 456-7890', p_number.to_s)
  end

  def test_invalid_greater_than_10_digits
    p_number = PhoneNumber.new('23456789011')
    assert_equal(nil, p_number.number)
  end

  def test_nonnumeric_number
    p_number = PhoneNumber.new('(j23) 456-7890')
    assert_equal(nil, p_number.number)
  end

  def test_less_than_ten
    p_number = PhoneNumber.new('456-7890')
    assert_equal(nil, p_number.number)
  end

  def test_greater_11_digits
    p_number = PhoneNumber.new('12345678912')
    assert_equal(nil, p_number.number)
  end

  def test_invalid_area_code
    p_number = PhoneNumber.new('(123) 456-7890')
    assert_equal(nil, p_number.area_code)
  end

  def test_valid_area_code
    p_number = PhoneNumber.new('(201) 456-7890')
    assert_equal('201', p_number.area_code)
  end

end

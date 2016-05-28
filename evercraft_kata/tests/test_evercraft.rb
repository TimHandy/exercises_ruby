require "../lib/evercraft.rb"
# require "test/unit"  # this line is old!
require 'minitest/autorun' # Load MiniTest



class TestEvercraft < Minitest::Test

  def test_create_character
    dave = Character.new("Dave", "good")
    assert_equal("Dave", dave.name)
  end

  def test_alignment_good_ok
    dave = Character.new("Dave", "good")
    assert_equal("good", dave.alignment)
  end

  def test_alignment_evil_ok
    dave = Character.new("Dave", "evil")
    assert_equal("evil", dave.alignment)
  end

  def test_alignment_not_ok
    assert_raises(RuntimeError) do
      dave = Character.new("Dave", "baddie")
    end
  end

  def test_default_armor_10
    dave = Character.new("Dave", "evil")
    assert_equal(10, dave.armor_class)
  end

  def test_default_hit_points_5
    dave = Character.new("Dave", "evil")
    assert_equal(5, dave.hit_points)
  end

  def 


end

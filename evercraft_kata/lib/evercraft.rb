require 'pry'

class Character

  ALIGNMENTS = ["good", "neutral", "evil"]

  attr_accessor :name, :alignment, :armor_class, :hit_points, :damage

  def initialize(name, alignment)
    self.name = name.capitalize

    @alignment = alignment.downcase
    raise "alignment must be 'Good', 'Evil', or 'Neutral'" unless ALIGNMENTS.include? @alignment
    self.alignment = @alignment

    @armor_class = 10
    @hit_points = 5
  end

  def attack(enemy)
    roll = rand(1..20)
    if roll == 20
      enemy.armor_class -= 2
    elsif roll >= enemy.armor_class
      enemy.armor_class -= 1
    end
    if enemy.armor_class < 1
      puts "Enemy dead, you win!"
    end
  end

  def damage()
    # if
  end
end

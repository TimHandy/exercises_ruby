class School

  def initialize
    @roster = {}
  end

  def to_h
    result = {}
    @roster.keys.sort.each do |key|
      result[key] = @roster[key].sort
    end
    result
  end

  def add(name, grade)
    @roster[grade] = [] unless @roster[grade]
    @roster[grade] = @roster[grade] << name
  end

  def grade(_grade)
    return [] unless @roster[_grade]
    @roster[_grade]
  end

end

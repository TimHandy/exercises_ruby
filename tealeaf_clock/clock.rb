class Clock
  def initialize(hour, minute)
    @hour = hour
    @minute = minute
  end

  def self.at(hour, minute=0)
    new(hour, minute)
  end

  def to_s
    format_number(@hour) + ":" + format_number(@minute)
  end

  def +(minutes)
    @minute += minutes
    self
  end

  private

  def format_number(number)
    number < 10 ? "0#{number}" : number.to_s
  end



end

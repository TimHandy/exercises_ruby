# p250 Head First Ruby

class Candidate

  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, age: nil, occupation: nil, hobby: nil, birthplace:   "Sleepy Creek")  # this uses 'parameter names'
    self.name = name
    self.age = age
    self.occupation = occupation
    self.hobby = hobby
    self.birthplace = birthplace
  end

end


p Candidate.new("Amy Nguyen", age: 37, occupation: "Engineer")


# …and it will warn callers if they make a typo in a keyword!
p Candidate.new("Amy Nguyen", occupaiton: "Engineer")
# Error ArgumentError: unknown keyword: occupaiton

#class for Model2 goes here
#Feel free to change the name of the class
class Patient

@@all = []
  attr_accessor :name , :condition , :income , :age

  def initialize(name, condition, income, age)
    @name = name
    @condition = condition
    @income = income
    @age = age

    @@all << self
  end

def self.all
  @@all
end

end

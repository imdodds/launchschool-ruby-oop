# Instantiating a new object with a state

class GoodDog
  def initialize(name)  # constructor
    @name = name  # instance variable
  end
end

# Passing arguments into the initialize method through the new method

sparky = GoodDog.new("Sparky")

# Instance variables keep track of information about the state of an object
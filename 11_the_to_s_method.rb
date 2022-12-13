# The to_s instance method is built in to every Ruby class
# By default, to_s returns the name of the object's class and an encoding of the object id
# to_s is also automatically called in string interpolation

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a * DOG_YEARS
  end

  def to_s  # override the to_s method
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

sparky = GoodDog.new("Sparky", 4)

puts sparky # equivalent to puts sparky.to_s

p sparky    # equivalent to puts sparky.inspect
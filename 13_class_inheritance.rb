class Animal
  def speak
    "Hello!"
  end
end

class GoodDog < Animal  # GoodDog inherits behaviour from Animal class
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak    # override the speak method
    "#{self.name} says arf!"
  end
end

class Cat < Animal
end

sparky = GoodDog.new
paws = Cat.new
puts sparky.speak   # => Sparky says arf!
puts paws.speak     # => Hello!
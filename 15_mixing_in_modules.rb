# Group behvaiours into a module and mix in that module to the classes that require those bhaviours

module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable   # mixing in Swimmable module
end

class Mammal < Animal
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable   # mixing in Swimmable module
end

sparky = Dog.new
neemo = Fish.new
paws = Cat.new

sparky.swim   # => I'm swimming!
neemo.swim    # => I'm swimming!
paws.swim     # => NoMethodError: undefined method `swim' for #<Cat:0x007fc453152308>

# Inheritance vs Modules

#   1. You can only subclass (class inheritance) from one class.
#      You can mix in as many modules (interface inheritance) as you'd like.
#   2. If there is an "is-a" relationship, class inheritance is usually the correct choice.
#      If there is a "has-a" relationship, interface inheritance is generally a better choice.
#      For example, a dog "is an" animal and it "has an" ability to swim.
#   3. You cannot instantiate modules. In other words, objects cannot be created from modules.
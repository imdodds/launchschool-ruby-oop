# The method lookup path is the order in which class are inspected when you call a method

module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end
end

puts "---Animal method lookup---"
puts Animal.ancestors

=begin
---Animal method lookup---
Animal
Walkable
Object
Kernel
BasicObject
=end

fido = Animal.new
fido.speak  # => I'm an animal, and I speak!
fido.walk   # => I'm walking.
fido.swim   # => NoMethodError: undefined method `swim' for #<Animal:0x007f92832625b0>

class GoodDog < Animal
  include Swimmable
  include Climbable
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors

=begin
---GoodDog method lookup---
GoodDog
Climbable
Swimmable
Animal
Walkable
Object
Kernel
BasicObject
=end
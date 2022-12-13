# Use self when calling setter methods from within the class
# Use self for class method definitions

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} weighs #{self.weight} and is #{self.height} tall."
  end

  def what_is_self
    self
  end

  # puts self
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
p sparky.what_is_self   # => #<GoodDog:0x0000000000cd8160 @name="Sparky", @height="12 inches", @weight="10 lbs">

# When an instance method uses self from within a class, it references the calling object
# When self is prepended to a method definition, it is defining a class method

class MyAwesomeClass
  def self.this_is_a_class_method
  end
end

# 1. self, inside an instance method, references the instance (object) that called the method -the calling object. Therefore, self.weight= is the same as sparky.weight= , in uor example.
# 2. self, outside of an instance method, references the class that can be used to define class methods. Therefore if we were to define a name class method, def self.name=(n) is the same as def GoodDog.name=(n)

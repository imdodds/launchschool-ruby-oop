# To access the object's name (stored in the @name instance variable), create a method that will return the name
# To change the object's name, use a setter method

=begin

class GoodDog
  def initialize(name)
    @name = name
  end

  def name  # getter method
    @name
  end

  def name=(name)  # setter method
    @name = name
  end

  def speak
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak
puts sparky.name   # => "Sparky"
sparky.name = "Spartacus"
puts sparky.name  # => "Spartacus"

=end

# To automatically create these getter and setter methods, use the attr_accessor method
# attr_accessor takes a symbol as an argument to create the name for the getter and setter methods

class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says arf!"   # call the instance method (name) instead of instance variable (@name)
  end

  def change_info(n, h, w)  # Using self.* tells Ruby to call a setter method, not create a local variable
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new("Sparky", "12 inches", "10 lbs")
# puts sparky.speak
# puts sparky.name  # => "Sparky"
puts sparky.info  # => Sparky weighs 10 lbs and is 12 inches tall.
# sparky.name = "Spartacus"
# puts sparky.name  # => "Spartacus"
sparky.change_info("Spartacus", "24 inches", "45 lbs")
puts sparky.info  # => Spartacus weighs 45 lbs and is 24 inches tall.

# To create only the getter method, use attr_reader
# To create only the setter method, use attr_writer
# All attr_* methods take Symbol objects as arguments
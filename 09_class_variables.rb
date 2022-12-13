# Using a class variable and class method to track a class-level detail that pertains only to the class, not individual objects

class GoodDog
  @@number_of_dogs = 0

  def initialize
    @@number_of_dogs += 1   # class variables can be accessed from within an instance method
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end
end

puts GoodDog.total_number_of_dogs   # => 0

dog1 = GoodDog.new
dog2 = GoodDog.new

puts GoodDog.total_number_of_dogs   # => 2
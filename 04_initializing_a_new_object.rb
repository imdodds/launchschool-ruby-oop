# The initialize method is a constructor 
# A special method that builds the object when a new object is instantiated
# Triggered by the new class method

class GoodDog
  def initialize
    puts "This object was initialized!"
  end
end

sparky = GoodDog.new  # => "This object was initialized!"
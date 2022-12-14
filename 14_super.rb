# Use the super keyword to call methods from earlier in the method lookup path

=begin

class Animal  # Animal superclass
  def speak
    "Hello!"
  end
end

class GoodDog < Animal  # GoodDog subclass
  def speak
    super + " from GoodDog class"   # invoke speak method from superclass and extend it
  end
end

sparky = GoodDog.new
sparky.speak    # => "Hello! from GoodDog class"

=end

class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(colour)  # super automatically forwards the arguments that were passed to method from which super is called
    super
    @colour = colour
  end
end

bruno = GoodDog.new("brown")  # => #<GoodDog:0x007fb40b1e6718 @color="brown", @name="brown">


# When super is called with specific arguments, eg. super(a, b) , the arguments are sent up the method chain

class BadDog < Animal
  def initialize(age, name)
    super(name)
    @age = age
  end
end

BadDog.new(2, "bear")

# Use super(), with parentheses, to call the method in the superclass with no arguments

=begin

class Animal
  def initialize
  end
end

class Bear < Animal
  def initialize(colour)
    super()
    @colour = colour
  end
end

bear = Bear.new("black")

=end
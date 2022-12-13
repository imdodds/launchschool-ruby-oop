# Class methods can be called directly on the class itself, without instantiating an object

class GoodDog
  def initialize(name)
    @name = name
  end

  def self.what_am_i  # Class method definition
    "I'm a GoodDog class!"
  end
end

GoodDog.what_am_i   # => I'm a GoodDog class!

# Class methods are for functionality that does not pertain to individual objects or that do not deal with state
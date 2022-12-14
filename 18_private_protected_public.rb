# Method Access Control is implemented with public, private, and protected access modifiers
# Access modifiers allow or restrict access to methods defined in a class

class GoodDog
  DOG_YEARS = 7

  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def public_disclosure
    "#{self.name} in human years is #{human_years}"
  end

  private   # private methods are only accessible from other methods in the class

  def human_years
    age * DOG_YEARS
  end
end

sparky = GoodDog.new("Sparky", 4)
sparky.human_years  # => private method `human_years' called for #<GoodDog:0x00000000010761a0 @name="Sparky", @age=4> (NoMethodError)

# Private methods are not accessible outside of the class definition at all, and are only accessible from inside the class when called without self.

# Protected methods cannot be invoked outside the class but, unlike private methods, protected methods allow access betwenn class instances

class Person
  def initialize(age)
    @age = age
  end

  def older?(other_person)
    age > other_person.age
  end

  protected

  attr_reader :age
end

malory = Person.new(64)
sterling = Person.new(42)

malory.older?(sterling)   # => true
sterling.older?(malory)   # => false

malory.age  # => NoMethodError: protected method `age' called for #<Person: @age=64>
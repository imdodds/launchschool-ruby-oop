# Objects of the same class have the same behaviours even when they contin different states

class GoodDog
  def initialize(name)
    @name = name
  end

  def speak   # instance method
    "#{@name} says arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak   # => "Sparky says arf!"

fido = GoodDog.new("Fido")
puts fido.speak     # => "Fido says arf!"
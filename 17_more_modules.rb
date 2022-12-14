# Namespacing refers to organizing similar classes under a module

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  def self.some_out_of_place_method(num)  # module methods are containers that use modules to house other methods
    num ** 2
  end
end

# Call classes in a module by appending the class name to the module name with two colons(::)

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak("Arf!")     # => "Arf!"
kitty.say_name("kitty") # => "kitty"

# Defining methods within a module means we can call them directly from the module

value = Mammal.some_out_of_place_method(4)
# value = Mammal::some_out_of_place_method(4)
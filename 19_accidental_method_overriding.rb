# Every class inherently subclasses from class Object, which contains many critical methods

class Parent
  def say_hi
    p "Hi from Parent."
  end
end

Parent.superclass   # => Object

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send    # Override send method
    p "send from Child..."
  end

  def instance_of?
    p "I am a fake instance"
  end
end

child = Child.new
child.say_hi    # => "Hi from Child."

# send is an instance method that all classes inherit from Object.
# If you defined a new send instance method in your class, all objects of your class will call your custom send method, instead of the one in class Object

son = Child.new
son.send :say_hi  # => "Hi from Child." (before override)

lad = Child.new
lad.send :say_hi  # => ArgumentError: wrong number of arguments (1 for 0) from (pry):12:in `send'

# The instance_of? method returns true if an object is an instance of a given class and false if it is not

c = Child.new
c.instance_of? Child  # => true (before override)
c.instance_of? Parent # => false (before override)

heir - Child.new
heir.instance_of? Child   # => ArgumentError: wrong number of arguments (1 for 0) from (pry):22:in `instance_of?'
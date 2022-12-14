module Towable
  def can_tow?(pounds)
    pounds < 2000
  end
end

class Vehicle
  attr_accessor :colour
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def self.gas_mileage(litres, kilometers)
    puts "#{kilometers / litres} kilometers per litre of gas"
  end

  def initialize(year, model, colour)
    @year = year
    @model = model
    @colour = colour
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} km/h."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} km/h."
  end

  def current_speed
    puts "You are now going #{@current_speed} km/h."
  end

  def shut_down
    @current_speed = 0
    puts "You put the car into park and turn it off."
  end

  def spray_paint(colour)
    self.colour = colour
    puts "Your new #{colour} paint job looks great!"
  end

  def age
    "Your #{self.model} is #{years_old} years old."
  end

  private

  def years_old
    Time.now.year - self.year
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.colour}, #{self.year}, #{self.model}!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck is a #{self.colour}, #{self.year}, #{self.model}!"
  end
end

corolla = MyCar.new(2020, "Toyota Corolla", "silver")

puts corolla

corolla.speed_up(40)
corolla.current_speed
corolla.brake(15)
corolla.current_speed
corolla.brake(20)
corolla.current_speed
corolla.shut_down

corolla.colour = "black"
puts corolla.colour
puts corolla.year

puts corolla.age  # => "Your Toyota Corolla is 2 years old."

corolla.spray_paint("red")  # => "Your new red paint job looks great!"

MyCar.gas_mileage(13, 351)  # => "27 kilometers per litre of gas"

puts "---MyCar method lookup---"
puts MyCar.ancestors

puts "---MyTruck method lookup---"
puts MyTruck.ancestors

puts "---Vehicle method lookup---"
puts Vehicle.ancestors


class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)
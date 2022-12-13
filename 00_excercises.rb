class MyCar
  attr_accessor :colour
  attr_reader :year

  def initialize(year, model, colour)
    @year = year
    @model = model
    @colour = colour
    @current_speed = 0
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

  def self.gas_mileage(litres, kilometers)
    puts "#{kilometers / litres} kilometers per litre of gas"
  end

  def to_s
    "My car is a #{colour}, #{year}, #{@model}!"
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

corolla.spray_paint("red")  # => "Your new red paint job looks great!"

MyCar.gas_mileage(13, 351)  # => "27 kilometers per litre of gas"
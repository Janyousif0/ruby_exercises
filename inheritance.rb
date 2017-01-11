class MovingObject


def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  
end


class Car < MovingObject
  
  def initialize
    super
  @make = make 
  @model = model
  @fuel = fuel 
  end



  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < MovingObject

  def initialize
    super
  
  @type = type
  @weight = weight
   
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new
car = Car.new 


p bike 
bike.accelerate
p bike

bike.ring_bell
car.honk_horn

class Car
  attr_accessor :year, :color, :model, :speed, :status
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @status = "off"
  end

  def accelerate(amount)
    if status == "on"
      @speed += amount
    else 
      "turn the car on"
    end
  end

  def brake(amount)
    if status == "on"
      @speed -= amount
    else
      "you're already pulled over, you can't pull over any farther"
    end
  end

  def turn_on
    if @speed == 0
      @status = "on"
    else
      "turn the car on"
    end
  end

  def turn_off
    if @speed == 0
      @status = "off"
    else 
      "You can't turn the car off if you're moving"
    end
  end

end

honda = Car.new(2001, "yellow", "hondo")
p honda.year
p honda.speed
honda.turn_on
p honda.accelerate(20)
p honda.brake(10)
p honda.turn_off
honda.brake(10)
p honda.turn_off

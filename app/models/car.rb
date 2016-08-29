# rules of your objects
class Car
  def initialize(make,year,color)
    @make = make
    @year = year
    @speed = 0
    @lights = "off"
    @parking_brake = "is released,GO FAST"
    @color = color
  end

  def speed= s
    @speed
  end

  def speed
    @speed
  end

  def make= m
    @make = m
  end

  def year= y
    @year = y
  end

  def make
    @make
  end

  def year
    @year
  end

  def accelerate
    if @parking_brake == "is set, you may not accelerate"
      @speed
    else
    @speed = @speed + 10
    end
  end

  def brake
    @speed = @speed - 7
    if @speed < 0
      @speed = 0
    end
  end

  def lights_switch
    if @lights == "on"
      @lights = "off"
    else
      @lights = "on"
    end
  end

  def lights
    @lights
  end

  def parking_brake
    @parking_brake
  end

  def parking_brake= pb
    @parking_brake = pb
  end

def color
  @color
end



end #end of class

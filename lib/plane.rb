class Plane

  attr_accessor :status

  def initialize 
    flying
  end

  def flying?
    @flying
  end

  def flying
    @flying = true
  end

  def landed
    @flying = false
  end

  def take_off_from airport
    airport.request_take_off_to self
    self.flying
  end

  def land_at airport
    airport.land self
    self.landed
  end

end
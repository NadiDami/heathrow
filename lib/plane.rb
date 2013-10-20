class Plane

  attr_accessor :status

  def initialize 
    @flying = true
  end

  def status
    return 'flying' if @flying == true
    'landed'
  end

  def flying
    @flying = true
  end

  def landed
    @flying = false
    status
  end

  def take_off_from airport
    airport.request_take_off_to self
    self.flying
  end

  def land_at airport
    airport.land self
    @flying = false if airport.planes.include? self
  end


end
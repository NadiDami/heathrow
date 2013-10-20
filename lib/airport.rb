require 'weather'

class Airport

  extend Weather

  attr_reader :capacity, :weather, :planes

  def initialize planes = [], capacity = 20
    @planes = planes
    @capacity = capacity
  end

  def plane_count
    @planes.count
  end

  def capacity
    @capacity
  end

  def full?
    plane_count == @capacity
  end

  def land plane
    @planes << plane unless full? 
  end

  def request_take_off_to plane
    @planes.delete plane
  end

end
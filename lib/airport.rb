require_relative 'weather'

class Airport

  include Weather

  attr_reader :capacity, :planes

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

  def stormy?
    self.conditions == :stormy
  end

  def land plane
    @planes << plane  if clear_for_landing?
  end

  def request_take_off_to plane
    @planes.delete plane unless stormy?
  end

  def clear_for_landing?
    true if !full? && !stormy?
  end

end
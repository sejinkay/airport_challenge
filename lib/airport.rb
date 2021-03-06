require_relative 'plane'

class Airport
  attr_accessor :plane
  attr_accessor :capacity
  DEFAULT_CAPACITY = 30

  def initialize(capacity = DEFAULT_CAPACITY)
    @plane = []
    @capacity = DEFAULT_CAPACITY
  end

  def weather
    if rand(100) > 85
      p "stormy"
    else
      p "sunny"
    end
  end

  def take_off
    fail 'No plane to fly' if empty?
    fail 'Not a good weather to fly' if weather == "stormy"

    p "Flight just took off"
    @plane.pop
  end

  def landing(plane)
    fail 'No space for landing' if full?
    fail 'Not a good weather to land' if weather == "stormy"

    @plane << plane
  end

  def empty?
    @plane.empty?
  end

  def full?
    @plane.count >= @capacity
  end
end

require_relative "plane"
require_relative "weather"

class Airport

  attr_reader :capacity
  attr_reader :apron

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @apron = []
  end

  def stormy?
    raise Exception.new("The weather is stormy.") if Weather.new.stormy
  end

  def full?
    raise Exception.new("The airport is full.") if @apron.count >= @capacity
  end

  def empty?
    raise Exception.new("The airport is empty.") if @apron.empty?
  end

  def land(plane)
    self.stormy?
    self.full?
    raise Exception.new("This plane has already landed.") if plane.landed

    plane.instance_variable_set(:@landed, true)
    @apron.push(plane)
  end

  def take_off
    self.empty?
    self.stormy?
    @apron[-1].instance_variable_set(:@landed, false)
    @apron.pop
  end

end

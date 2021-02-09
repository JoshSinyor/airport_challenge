# frozen_string_literal: true

require_relative 'plane'

# Each airport is an instance of the Airport class.
class Airport
  attr_reader :capacity
  attr_reader :apron

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @apron = []
  end

  def stormy?
    raise Exception, 'The weather is stormy.' if Weather.new.stormy
  end

  def full?
    raise Exception, 'The airport is full.' if @apron.count >= @capacity
  end

  def empty?
    raise Exception, 'The airport is empty.' if @apron.empty?
  end

  def land(plane)
    stormy?
    full?
    raise Exception, 'This plane has already landed.' if plane.landed

    plane.instance_variable_set(:@landed, true)
    @apron.push(plane)
  end

  def take_off
    empty?
    stormy?
    @apron[-1].instance_variable_set(:@landed, false)
    @apron.pop
  end
end

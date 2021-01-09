require_relative "plane"

class Airport

  attr_reader: @capacity

  DEFAULT_CAPACITY = 10

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @apron = []
  end

end

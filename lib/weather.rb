# frozen_string_literal: true

# The weather is an instance of the Weather class.
class Weather
  attr_reader :stormy

  def initialize
    @stormy = rand(1..100) >= 95
  end
end

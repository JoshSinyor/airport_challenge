# frozen_string_literal: true

# Each plane is an instance of the Plane class.
class Plane
  attr_accessor :landed

  def initialize
    @landed = false
  end
end

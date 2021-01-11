class Weather

  attr_reader :stormy

  def initialize
    @stormy = rand(1..100) >= 95
  end

end

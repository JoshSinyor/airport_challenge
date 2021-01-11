require "plane"

describe Plane do

  it "should land at an airport" do
    airport = Airport.new
    expect(airport.land(subject)).to eq [subject]
  end

  it { is_expected.to respond_to :landed }

  it "should recognise it has landed" do
    airport = Airport.new
    airport.land(subject)
    expect(subject.landed).to eq true
  end

  it "should recognise it has taken off" do
    airport = Airport.new
    airport.land(subject)
    airport.take_off
    expect(subject.landed).to eq false
  end

end

require "airport"
require "weather"

describe Airport do

  it { is_expected.to respond_to :apron }
  it { is_expected.to respond_to :capacity }

  it "should have a default capacity" do
    expect(subject.capacity).to eq Airport::DEFAULT_CAPACITY
  end

  it "should allow a custom capacity" do
    subject = Airport.new(20)
    expect(subject.capacity).to eq 20
  end

  it { is_expected.to respond_to :land }

  it "should land a plane" do
    allow(subject).to receive(:stormy?) { false }
    plane = Plane.new
    expect(subject.land(plane)).to eq [plane]
  end

  it "should not allow a plane to land if it has already landed" do
    allow(subject).to receive(:stormy?) { false }
    plane = Plane.new
    subject.land(plane)
    expect { subject.land(plane) }.to raise_error {}
  end

  it { is_expected.to respond_to :full? }

  it "should not land a plane if the airport is full to the default capacity" do
    allow(subject).to receive(:stormy?) { false }
    10.times { subject.land(Plane.new) }
    expect { subject.land(Plane.new) }.to raise_error {}
  end

  it "should not land a plane if the airport is full to a specified capacity" do
    subject = Airport.new(20)
    allow(subject).to receive(:stormy?) { false }
    20.times { subject.land(Plane.new) }
    expect { subject.land(Plane.new) }.to raise_error {}
  end

  it { is_expected.to respond_to :stormy? }

  it "should not allow a plane to land if it is stormy" do
    allow(subject).to receive(:stormy?) { true }
    expect { subject.land(plane) }.to raise_error {}
  end

  it "should not allow a plane to take off if it is stormy" do
    allow(subject).to receive(:stormy?) { true }
    expect { subject.take_off }.to raise_error {}
  end

  it { is_expected.to respond_to :take_off }

  it "should allow a parked plane to take off" do
    allow(subject).to receive(:stormy?) { false }
    plane = Plane.new
    subject.land(plane)
    expect(subject.apron.include?(plane)).to eq true
  end

  it "should not allow a plane to take off if it has already taken off" do
    allow(subject).to receive(:stormy?) { false }
    plane = Plane.new
    subject.land(plane)
    subject.take_off
    expect(subject.apron.include?(plane)).to eq false
  end

  it { is_expected.to respond_to :empty? }

  it "should not allow a plane to take off if the airport is empty" do
    expect { subject.take_off }.to raise_error {}
  end

end

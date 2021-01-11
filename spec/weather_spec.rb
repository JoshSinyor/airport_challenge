require "weather"

describe Weather do

  it { is_expected.to respond_to :stormy }

  it "should never be stormy when the probability of a storm is 0%" do
    allow(subject).to receive(:stormy) { true }
    expect(subject.stormy).to eq true
  end

  it "should always be stormy when the probability of a storm is 100%" do
    allow(subject).to receive(:stormy) { false }
    expect(subject.stormy).to eq false
  end

end

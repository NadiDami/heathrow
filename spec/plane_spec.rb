require 'plane'

describe Plane do

  let(:plane) { Plane.new }
  let(:airport) {double :airport}

  it 'has a flying status when created' do
    expect(plane.flying?).to be_true
  end

  it 'has a flying status when in the air' do
    plane.flying
    expect(plane.flying?).to be_true
  end

  it 'can take off' do
    plane.landed
    expect(airport).to receive(:request_take_off_to)
    plane.take_off_from airport
    expect(plane.flying?).to be_true
  end

  it 'can land' do
    expect(airport).to receive(:land)
    plane.land_at airport
    expect(plane.flying?).to be_false
  end



end
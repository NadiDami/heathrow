require 'plane'

describe Plane do

  let(:plane) { Plane.new }
  let(:airport) {double :airport}

  it 'has a flying status when created' do
    expect(plane.status).to eq 'flying'
  end

  it 'has a flying status when in the air' do
    plane.flying
    expect(plane.status).to eq 'flying'
  end

  it 'can take off' do
    expect(airport).to receive(:request_take_off_to)
    plane.take_off_from airport
    expect(plane.status).to eq 'flying'
  end

  it 'can land' do
    airport = double :Airport, {planes: [plane]}
    expect(airport).to receive(:land).with (plane)
    plane.land_at airport 
    expect(plane.status).to eq 'landed'
  end

end
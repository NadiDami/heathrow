require 'airport'
require_relative 'weather_spec'

describe Airport do

  include_examples 'Weather'

  let(:airport) { Airport.new } 
  let(:plane) { double :plan } 

  context 'taking off and landing' do

    it 'a plane can land' do
      airport.land plane
      expect(airport.plane_count).to eq 1
    end

    it 'a plane can take off' do
      airport.request_take_off_to plane
      expect(airport.plane_count).to eq 0
    end
    
  end

  context 'air traffic control' do

    it 'a plane cannot land if the airport is full' do
      airport = Airport.new [plane, plane], 2
      airport.land plane
      expect(airport.plane_count).to eq 2
    end

    it 'knows its capacity' do
      airport = Airport.new [plane, plane], 6
      expect(airport.capacity).to eq 6
    end

  end


end
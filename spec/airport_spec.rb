require 'airport'
require_relative 'weather_spec'

describe Airport do

  include_examples 'Weather'

  let(:airport) { Airport.new } 
  let(:plane) { double :plane } 

  context 'taking off and landing' do

    before(:each) do 
      Airport.any_instance.stub(:conditions).and_return(:sunny)
    end

    it 'a plane can land' do
      airport.land plane
      expect(airport.plane_count).to eq 1
    end

    it 'a plane can take off' do
      Airport.any_instance.stub(:conditions).and_return(:sunny)
      airport = Airport.new [plane], 1
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

  context 'weather conditions' do

    before(:each) do 
      Airport.any_instance.stub(:conditions).and_return(:stormy)
    end

    it 'a plane cannot take off when there is a storm brewing' do
      airport = Airport.new [plane]
      airport.request_take_off_to plane
      expect(airport.plane_count).to eq 1
    end

    it 'a plan cannot land in the middle of a storm' do
      airport = Airport.new [plane]
      airport.land plane
      expect(airport.plane_count).to eq 1
    end

  end

end
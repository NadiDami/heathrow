require 'airport'
require 'plane'

describe "The grand finale (last spec)" do

  it 'all planes can land and all planes can take off' do
    airport = Airport.new [], 6

    plane1 = Plane.new
    plane2 = Plane.new
    plane3 = Plane.new
    plane4 = Plane.new
    plane5 = Plane.new
    plane6 = Plane.new
    planes = [plane1, plane2, plane3, plane4, plane5, plane6]

    planes.each { |plane| plane.land_at airport}

    planes.each do |plane|
      until plane.status == 'landed'
        plane.land_at airport 
      end
     end

    expect(airport.full?).to be_true


    planes.each do |plane|
      until plane.status == 'flying'
        plane.take_off_from airport
      end
    end

    expect(airport.plane_count).to eq 0
  end

end



# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!


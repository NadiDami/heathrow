require 'weather'

shared_examples 'Weather' do
  let(:weather) {described_class.new}

  context 'should at random' do

    it 'be mostly sunny' do
      expect(Random).to receive(:rand).with(1..10).and_return(1)
      expect(weather.conditions).to eq :sunny
    end

    it 'be sometimes stormy' do
      expect(Random).to receive(:rand).with(1..10).and_return(10)
      expect(weather.conditions).to eq :stormy
    end

  end

end
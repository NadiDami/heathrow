require 'weather'

shared_examples 'Weather' do
  let(:weather) {described_class.new}

  context 'should at random' do

    it 'be mostly sunny' do
      expect(Random).to receive(:rand).with(1..10).and_return(1)
      expect(described_class.conditions).to eq :sunny
    end

  end

end
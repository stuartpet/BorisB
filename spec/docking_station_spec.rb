require 'docking_station'

describe Dockingstation do
    it { is_expected.to respond_to (:release_bike) }


describe '#release_bike' do
    it 'releases a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq (bike)
      bike = subject.release_bike
      expect(bike).to be_working
    end

      describe '#release_bike'
      it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
  end
end

describe '#docking_bike' do
  it 'docks a bike at a docking station' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  describe '#docking_bike' do
    it 'it raises an error when there are no spaces available' do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error 'No space available'
  end
end

describe '#bike' do
  it 'returns a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
end
end

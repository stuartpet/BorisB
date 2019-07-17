# frozen_string_literal: true

require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::NUMBER_OF_BIKES
  end

  describe '#release_bike' do
    it 'releases a working bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
      expect(bike).to be_working
    end

    describe '#release_bike'
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

    describe '#release_bike'
    it 'checks if bike is broken' do
      bike = Bike.new
      bike.report_broken
      bike.broken?
      expect(bike).to be_broken
    end

    describe '#release_bike'
    it 'wont release a broken bike' do
      bike = Bike.new
      bike.report_broken
      subject.dock(bike)
      expect { subject.release_bike }.to raise_error 'bike is broken'
    end
  end

  describe '#docking_bike' do
    it 'docks a bike at a docking station' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    describe '#docking_bike' do
      it 'raises an error when there are no spaces available' do
        subject.capacity.times { subject.dock Bike.new }
        expect { subject.dock Bike.new }.to raise_error 'No space available'
      end
    end

    describe 'initialization' do
      subject { DockingStation.new }
      let(:bike) { Bike.new }
      it 'defaults capacity' do
        described_class::NUMBER_OF_BIKES.times do
          subject.dock(bike)
        end
        expect { subject.dock(bike) }.to raise_error 'No space available'
      end
    end
  end
end

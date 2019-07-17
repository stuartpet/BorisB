# frozen_string_literal: true

require_relative 'bike'

class DockingStation
  NUMBER_OF_BIKES = 20
  attr_reader :bike, :capacity

  def initialize(capacity = NUMBER_OF_BIKES)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    flag = false
    raise 'No bikes available' unless empty?

    bikes.each { |bike| flag = true if bike.working? }
    raise 'bike is broken' unless flag

    bikes.pop
  end

  def dock(bike)
    raise 'No space available' if full?

    bikes << bike
end

  private

  attr_reader :bikes

  def full?
    bikes.count >= capacity
    end

  def empty?
    !bikes.empty?
    end
end

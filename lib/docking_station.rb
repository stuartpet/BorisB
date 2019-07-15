# frozen_string_literal: true

require_relative 'bike'

class Dockingstation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if empty?

    @bikes.pop
  end

  def dock(bike)
    raise 'No space available' if full?

    @bikes << bike
  end

  private

  def full?
    @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end
end

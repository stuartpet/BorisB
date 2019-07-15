# frozen_string_literal: true

require_relative 'bike'

class Dockingstation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if @bikes.empty?

    @bikes.pop
end

  def dock(bike)
    raise 'No space available' if @bikes.count >= 20

    @bikes << bike
  end
end

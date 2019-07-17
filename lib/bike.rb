# frozen_string_literal: true

require_relative 'docking_station'

class Bike
  attr_reader :working

  def initialize(working = true)
    @working = working
  end

  def working?
    working
  end

  def report_broken
    @broken = true
  end

  def broken?
    @working = false
    self
  end
end

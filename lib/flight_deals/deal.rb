require 'pry'
class FlightDeals::Deal
  attr_accessor :name, :desc

  @@all = []
  def initialize
    @@all << self
  end

  def self.all
    @@all
  end
end

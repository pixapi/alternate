require 'pry'

class CarWash

  attr_reader :opening_year,
              :location,
              :city,
              :state

  def initialize(location, opening_year)
    @location = location
    @opening_year = opening_year
  end

  def location_city
    location.split(",")[0]
  end

  def location_state
    location.split(",")[0]
  end
  



  # def location(location)
  #   "#{city} + #{state}"
  # end

end

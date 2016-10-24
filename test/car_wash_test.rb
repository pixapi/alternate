gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/car_wash'

class CarWashTest < Minitest::Test

  def test_it_has_a_class
    car = CarWash.new("Denver,CO", 2010)

    assert_equal CarWash, car.class
  end

  def test_it_has_an_opening_year
    car = CarWash.new("Denver,CO", 2010)

    assert_equal 2010, car.opening_year
  end

  def test_it_has_a_location
    car = CarWash.new("Denver,CO", 2010)

    assert_equal "Denver,CO", car.location
  end

  def test_location_city
    car = CarWash.new("Denver,CO", 2010)

    assert_equal "Denver", car.location_city
  end

  def test_num_employees
    car = CarWash.new("Denver,CO", 2010)

    assert_equal num_employees, car.location_city
  end

end

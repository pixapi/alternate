gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/car_wash'
require 'pry'

class CarWashTest < Minitest::Test
  def test_it_exists
    assert_instance_of CarWash, CarWash.new("Denver,CO", 2010)
  end

  def test_it_has_a_class
    cw = CarWash.new("Denver,CO", 2010)

    assert_equal CarWash, cw.class
  end

  def test_it_can_extract_city
    cw = CarWash.new("Denver,CO", 2010)
    location = "Denver, CO"

    assert_equal "Denver", cw.extract_city(location)
  end

  def test_it_can_extract_state
    cw = CarWash.new("Denver, CO", 2010)
    location = "Denver, CO"

    assert_equal "CO", cw.extract_state(location)
  end

  def test_starts_with_zero_employees
    cw = CarWash.new("Denver, CO", 2010)
    num = 0

    assert_equal 0, cw.no_of_employees(num)
  end

  def test_it_can_hire_employees
    cw = CarWash.new("Denver, CO", 2010)

    assert_equal 3, cw.hire_employees(3)
  end

  def test_it_can_hire_employees_in_batches
    cw = CarWash.new("Denver, CO", 2010)

    cw.hire_employees(3)
    assert_equal 3, cw.no_of_employees(3)

    cw.hire_employees(4)
    assert_equal 7, cw.no_of_employees(4)
  end

  def test_it_has_an_opening_year
    cw = CarWash.new("Denver,CO", 2010)

    assert_equal 2010, cw.opening_year
  end

  def test_it_can_provide_year
    cw = CarWash.new("Denver,CO", 2010)

    assert_equal "I am 6 years old", cw.provide_year
  end
end

# frozen_string_literal: true

require 'test_helper'
class CarTest < ActiveSupport::TestCase
  test "the car is valid" do 
    car = Car.new(model: "Toyota", image: "Image", description: "Toyota Land Cruiser")
    assert car.save
  end 
end

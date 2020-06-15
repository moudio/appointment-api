require 'rails_helper'

RSpec.describe Car, type: :model do
car = Car.new(model: "Toyota" , description: "Land Cruiser Description")

it "checks the car model doesn't save with no model" do 
  car.model = nil 
expect(car).not_to be_valid 
end

it "checks if car is valid when there is picture and model" do 
  car.model = "Toyota"
  expect(car).to be_valid 
end 

it "checks if car has many books " do 
  should respond_to(:books)
end 

it "checks if car has many users that booked " do 
  should respond_to(:users)
end 

end

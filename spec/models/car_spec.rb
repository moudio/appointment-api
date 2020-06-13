require 'rails_helper'

RSpec.describe Car, type: :model do
car = Car.new(model: "Toyota", image: "Image", description: "Land Cruiser Description")

it "checks the car model doesn't save with no model" do 
  car.model = nil 
expect(car).not_to be_valid 
end

it "checks car model doesn't save with no picture" do 
car.model = "Toyota"
car.image = nil 
expect(car).not_to be_valid
end 

it "checks if car is valide when there is picture and model" do 
  car.model = "Toyota"
  car.image = "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/tmna-2191021-land-cruiser-200-heritage-0001-1572378175.jpg?crop=0.998xw:0.750xh;0.00160xw,0.161xh&resize=1200:*"
  expect(car).to be_valid 
end 
 


end

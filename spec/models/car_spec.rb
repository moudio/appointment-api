require 'rails_helper'

RSpec.describe Car, type: :model do

let!(:car) {build(:car)} 

it "checks the car model doesn't save with no model" do 
  car.model = nil 
expect(car).not_to be_valid 
end

it "checks if car is valid when there is a model and description" do 
  expect(car).to be_valid 
  expect(car.save).to eq(true)
end 



it "checks if car has many books " do 
  should respond_to(:books)
end 

it "checks if car has many users that booked " do 
  should respond_to(:users)
end 

end

require 'rails_helper'

RSpec.describe "Books", type: :request do
let(:user){create(:user)}
let(:cars){create_list(:car, 20)}
let(:first_book){create(:book, user_id: :user.id, car_id: :car.id)}
let(:second_book){create(:book, user_id: :user.id, car_id: :cars.second.id)}
let(:third_book){create(:book, user_id: user.id, car_id: cars.third.id)}
# let!(:second_book_id){:second_book.id}

describe 'Get bookings' do

before {get "/api/v1/books/1"}

context "when the bookings exist" do
it "returns the list of bookings for one user" do
expect(JSON(response.body).size).to eq(1)
end

end


context "when the booking does not exist" do

  it "returns the a not fount message" do
expect(response.body).to match(/Couldn't find Book with 'id'=1/)


  end


end

end

describe 'Create Bookings' do
before {post '/api/v1/books'}

end

end

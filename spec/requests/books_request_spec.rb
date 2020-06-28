require 'rails_helper'

RSpec.describe "Books", type: :request do
let!(:user) {create(:user)}
let!(:cars) {create_list(:car, 20)}
let!(:first_book) {create(:book, user_id: user.id, car_id: 1)}
let!(:second_book) {create(:book, user_id: user.id, car_id: 2)}
let!(:third_book) {create(:book, user_id: user.id, car_id: 3)}
let!(:first_book_id){first_book.id}

describe 'Get bookings' do

before {get "/api/v1/books/#{first_book_id}"}

context "when the bookings exist" do
it "returns the list of bookings for one user and car" do
expect(JSON(response.body).size).to eq(2)
end

end


context "when the booking does not exist" do

    let(:first_book_id){100}

  it "returns the a not fount message" do
expect(response.body).to match(/Couldn't find Book with 'id'=100/)


  end


end

end

  describe 'Create Bookings' do

      let(:valid_attributes){{user_id: 1, car_id: 5, city: "Dakar", date:"2020-07-30"}}
      context 'when book is successfully created' do

      before {post '/api/v1/books', params:{book: valid_attributes} }

      it "creates a new book" do
          expect(JSON(response.body)['status']).to eq("book_created")
        end
        it "returns status code 200 " do
          expect(response).to have_http_status(200)
        end
    end


    context "when the request is invalid" do
      before {post '/api/v1/books',  params: { book: {user_id: 1, car_id: 3, city: '', date: '2020-08-12'}} }

        it "returns status code 500 for response" do
              expect(JSON(response.body)['status']).to eq(500)
        end


    end

    context "deleting a book " do

      before {post '/api/v1/books',  params: { book: {user_id: 1, car_id: 3, city: 'Louga', date: '2020-08-12'}} }

        it "returns response after book destroyed" do
            delete "/api/v1/books/#{first_book_id}"
            expect(JSON(response.body)['status']).to eq('book_destroyed')
        end
    end
    
  end

end

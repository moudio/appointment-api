require 'rails_helper'

RSpec.describe "Users API", type: :request do
let!(:user) {create(:user)}
let!(:car) {create(:car)}
let!(:book) {create(:book, car_id: 1 , user_id: user.id)};
let!(:user_id) {user.id}
let!(:id) {car.id}

describe 'Get users' do 
    before {get "/users/#{user_id}/cars"}

    context 'when car exists' do 
        it 'returns status code 200' do 
            expect(response).to have_http_status(200)
        end 

            it 'returns all user cars' do 
                expect(JSON(response.body).size).to eq(1)
            end 
    end 

    context 'when car does not exist' do 
        let(:user_id) {0} 
        it 'returns a not found message' do 
            expect(response.body).to match(/Couldn't find User/)
        end

    end

end 

describe 'Get users/:user_id/cars/:id' do 
    before {get "/users/#{user_id}/cars/#{id}"}

    context 'when car exists' do 
        it 'returns status code 200' do 
            expect(response).to have_http_status(200)
        end 

        it 'returns the item' do 
            expect(JSON(response.body)['id']).to eq(id) 
        end 
    end
    
    context 'when user car does not exist' do 
        let(:id) {0}

        it 'returns status code 404' do 
            expect(response.body).to match(/Couldn't find Car/)
        end 
    end 
end 




end 
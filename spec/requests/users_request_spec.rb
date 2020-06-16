require 'rails_helper'

RSpec.describe "Users API", type: :request do
let!(:user) {create(:user)}
let!(:cars) {create_list(:car, 20)}
let!(:book) {create_list(:book, 20, car_id: rand(1..20) , user_id: user.id)};
let!(:user_id) {user.id}
let!(:id) {cars.first.id}

describe 'Get users' do 
    before {get "/users/#{user_id}/cars"}

    context 'when car exists' do 
        it 'returns status code 200' do 
            expect(response).to have_http_status(200)
        end 

            it 'returns all user cars' do 
                expect(JSON(response.body).size).to eq(20)
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
            expect(response.body).to math(/Couldn't find Car/)
        end 
    end 
end 




end 
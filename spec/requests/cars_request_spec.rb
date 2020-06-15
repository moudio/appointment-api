require 'rails_helper'

RSpec.describe "Cars API", type: :request do
    let!(:cars) {create_list(:car, 10)}
    let(:car_id) {cars.first.id}
    describe 'Get /cars' do 
        before {get '/cars'}
    
        it 'returns cars' do 
            result = JSON(response.body)
                expect(result).not_to be_empty
                expect(result.size).to eq(10)
        end 
    end 
end

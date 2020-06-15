require 'rails_helper'

RSpec.describe "Cars API", type: :request do
    let!(:cars) {create_list(:car, 5)}
    let(:car_id) {cars.first.id}

    describe 'Get /cars' do 
        before {get 'todos'}
    
        it 'returns cars' do 
                expect(json).not_to be_empty
                expect(json.size).to eq(10)
        end 
    end 
end

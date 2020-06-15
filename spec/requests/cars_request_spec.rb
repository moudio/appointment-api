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

        it "returns status code 200 " do 
expect(response).to have_http_status(200)
        end     
    end 

    describe 'Get /cars/:id' do 
            before{ get "/cars/#{car_id}"}

            context "when the record exists " do 
                
                it "returns the car " do 
                    expect(JSON(response.body).not_to be_empty)
            end 

    end 
end

end
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
            before{ get "/cars/#{car_id}" }

            context "when the record exists " do 

                it "returns the car " do 
                    expect(JSON(response.body)).not_to be_empty
            end 

            it "returns the status code 200" do 
                expect(response).to have_http_status(200)
            end 


        end 
        
        context "when the car doesn't exist" do
            let(:car_id) {25} 

                it "returns the status code 404" do 
                expect(response).to have_http_status(404)
                end 

                it "returns a not found message" do     
                    expect(response.body).to match(/Couldn't find Car/); 

                end 
        end 


    end

    describe 'POST /cars' do 

        let(:valid_attributes) {{model: 'Range Rover Auto', description: 'The description for the Range Rover Autobiography', alt: 'Autobio' }}

        context 'when the request is valid' do 
            before {post '/cars', params: valid_attributes}

            it "creates a car" do 
                expect(JSON(response.body)['model']).to eq('Range Rover Auto')
            end 

            it "returns status code 201" do 
                expect(response).to have_http_status(201)
            end 
        end
        
        context 'when the request is invalid' do 
            before {post '/cars', params: {model: 'Fake car'}}

            it "returns status code 422" do 
                expect(response).to have_http_status(422);
            end 

            it 'returns a validation failure message' do 
                    expect(response.body)
                    .to match(/Validation failed: Alt can't be blank/)
            end 
        end 

        

    end 

    describe 'PUT /cars/:id' do 

        let(:valid_attributes) {{model: 'Range Rover Velar'}}

        context 'when the record exists' do 

            before {put "/cars/#{car_id}"}

            it "returns status code 204" do 
                expect(response).to have_http_status(204)
            end 
        
        
        end 
    end 


end 

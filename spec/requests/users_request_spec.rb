require 'rails_helper'

RSpec.describe "Users API", type: :request do
let!(:user) {create(:user)}
let!(:car) {create_list(:car, 20, car_id: car.id)}

let(:user_id) {user.id}
 


end 
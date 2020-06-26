require 'rails_helper'

RSpec.describe "Sessions", type: :request do
let!(:new_user){create(:user, username: "User", password: "password")}

describe 'Login' do

  context "Success login " do
    before {post '/login/', params: {user: {username: "User", password:"password"}}}

      it "returns the login credentials" do
        expect(JSON(response.body)['logged_in']).to eq(true)
      end


    end

  context 'Fail to login' do
    before {post '/login', params: {user: {username: 'Fake User', password: 'false password'}}}
      it "return errors" do
          expect(JSON(response.body)["errors"]).to match(["Verify credentials and try again or signup"])
      end

    end

  end


describe 'Logout' do
  before {post '/login/', params: {user: {username: "User", password:"password"}}}

context "Logs out successfully " do

before {delete '/logout'}

it "sends back response after logging out" do
  expect(JSON(response.body)['logged_out']).to eq(true)
end



end

end


end

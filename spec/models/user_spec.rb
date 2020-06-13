require 'rails_helper'

RSpec.describe User, type: :model do
  user = User.new(username:"Mouhamadou", password:"password", password_confirmation: "password")
  context "tests the User model validation" do 
      it "tests the presence of username" do 
          user.username = nil 
        expect(user).not_to be_valid
      end 

      it "tests the presence of password for user" do 
          user.password = nil
          expect(user).not_to be_valid
      end 
  end 
end

require 'rails_helper'
RSpec.describe User, type: :model do
  let!(:user) {build(:user)}
  context "tests the User model validation" do 
         it "tests the user is valid with username and password" do 
        expect(user).to be_valid
      end 

       it "tests the uniqueness of username" do 
          second_user = User.new(username:"Mouhamadou", password: "unique_passowrd",  password_confirmation: "unique_password")
          user.save 
          expect(second_user).not_to be_valid
      end 
      
      it "tests the presence of username" do 
          user.username = nil 
        expect(user).not_to be_valid
      end 

      it "tests the presence of password for user" do 
          user.password = nil
          expect(user).not_to be_valid
      end 

      it "tests the presence of username and password" do 
        user.username = nil
        user.password = nil 
        expect(user).not_to be_valid

      end
      
 
        it "has many books" do 
            should respond_to(:books)
        end 

        it "has many cars through books" do 
              should respond_to(:cars)
        end 
     

 
  end 
end

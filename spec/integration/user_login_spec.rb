require 'rails_helper'
require_relative '../helpers/users_helpers_spec.rb'
feature 'User login' do 
let(:user) {create(:user)}
scenario "checks if user can login" do 
 login user
expect(page).to have_content("Logout")
click_button "Logout"
expect(page).to have_content("Login")
end 



end 
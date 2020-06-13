require 'rails_helper'

feature 'user signup' do 
scenario "user signs up with validation" do 
visit signup_path
fill_in "Username", with: "Mouhamadou"
fill_in "Password", with: "password"
fill_in "Password confirmation", with: "password"

expect do 
click_button 'Create Account'
end.to change(User, :count).by(1) 
end 
end 
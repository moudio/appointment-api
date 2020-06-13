require 'rails_helper'

feature 'User login' do 
    user = User.create(username: "Mouha", password:"password", password_confirmation:"password")

scenario "checks if user can login" do 
visit login_path 
fill_in "Username", with: user.username
fill_in "Password", with: user.password
click_button "Login" 
expect(page).to have_content(user.username)
click_button "Logout"
expect(page).to have_content("Login")
end 



end 
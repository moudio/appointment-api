# frozen_string_literal: true

require 'rails_helper'

def login(user)
  visit login_path
  fill_in 'Username', with: user.username
  fill_in 'Password', with: user.password
  click_button 'Login'
end

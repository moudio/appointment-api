# frozen_string_literal: true

require 'test_helper'
class UserTest < ActiveSupport::TestCase
  test "should not save user without username" do 
      user = User.new
      assert_not user.save 
  end 

  test "should not save without password" do 
    user = User.new(username: "Username")
    assert_not user.save
  end 

  test "should save with username and password" do 
    user = User.new(username: "Mouhamadou", password: "password")
    assert user.save 
  end 
 
end
 
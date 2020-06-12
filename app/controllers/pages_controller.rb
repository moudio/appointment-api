# frozen_string_literal: true

class PagesController < ApplicationController
  def welcome
    @users = User.all
  end
end

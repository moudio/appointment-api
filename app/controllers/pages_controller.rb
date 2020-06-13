# frozen_string_literal: true

class PagesController < ApplicationController
      before_action :authorized, only: [:welcome]
  def welcome
    @cars = Car.all
  end
end

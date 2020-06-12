# frozen_string_literal: true

class PagesController < ApplicationController
  def welcome
    @cars = Car.all
  end
end

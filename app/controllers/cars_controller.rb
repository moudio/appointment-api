class CarsController < ApplicationController
    before_action :authorized, only: [:show]
    def index 
        @cars = Car.all
    end 
end

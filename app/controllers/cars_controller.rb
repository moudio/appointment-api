class CarsController < ApplicationController
    before_action :authorized
    def index 
        render :json => Car.all
    
    end 
end

class CarsController < ApplicationController
    before_action :authorized, only: [:show]
    def index 
        @cars = Car.all
        respond_to do |format|
            format.html
            format.xml {render :xml => @cars }
            format.json {render :json => @cars }
        end 
    end 
end

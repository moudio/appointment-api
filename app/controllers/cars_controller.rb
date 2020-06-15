class CarsController < ApplicationController
    # before_action :authorized
    def index 
        render :json => Car.all
    end 

    def show 
        render :json => Car.find(params[:id])
    end 



end

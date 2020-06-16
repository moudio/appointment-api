class UsersController < ApplicationController
    before_action :set_user 
    def index 
        @users = User.all 
        json_response(@users)
    end 

    def new 
    @user = User.new
    end 

    def create 
        @user = User.create(user_params)
        if  @user.save 
            redirect_to user_path(@user)
        else 
            render 'new' 
        end 
    end 

    def show 
        json_response(@user)
    end 

    def user_cars
        @user_cars = @user.cars 
        json_response(@user_cars)
    end 

    def user_books 
        @user_books = @user.books 
        json_response(@user_books)
    end 

    def show_car 
        @car = @user.cars.find(params[:car_id])
        json_response(@car)
    end 

    private
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

    def set_user 
        @user = User.find(params[:id])
    end 
end

class UsersController < ApplicationController
    before_action :set_user, only:[:show, :user_cars, :user_books, :show_cars, :user_books, :show_car]

    def index
        @users = User.all
        if @users
        json_response(@users)
      else
        render json: {
          status: 500,
          errors: ['no users found']
        }

    end

  end

    def new
    @user = User.new
    end

    def create
        @user = User.create(user_params)
        if  @user.save
          login!
          render json: {
            status: :created,
            user: @user
          }

        else
            render json: {
              status: 500,
              errors: @user.errors.full_messages
            }
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

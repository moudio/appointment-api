# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show user_books_cars]
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


  def create
    @user = User.create(user_params)
    if @user.save
      login!
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: {
        status: :created,
        user: @user.username,
        user_id: @user.id,
        cars: @user.cars,
        token: token
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

  def user_books_cars
    if(@user)
    render json: {
      books: @user.books,
      cars: @user.cars
    }
  else
    render json: "Couldn't find User"
  end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

  def set_user
    @user = User.find_by(username: params[:username])
  end
end

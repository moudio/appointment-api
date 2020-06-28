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

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      login!
      render json: {
        status: :created,
        user: @user,
        cars: @user.cars
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
    render json: {
      books: @user.books,
      cars: @user.cars
    }
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end
end

# frozen_string_literal: true

class SessionsController < ApplicationController
  before_action :authorize_request, except: [:create, :cookie_login]
  before_action :find_user , only: :cookie_login
  def create
    @user = User.find_by(username: session_params[:username])
    if @user&.authenticate(session_params[:password])
      login!
      token = JsonWebToken.encode(user_id: @user.id)
      time = Time.now + 24.hours.to_i
      render json: {
        token: token,
        exp: time.strftime('%m-%d-%Y %H:%M'),
        logged_in: true,
        user: @user.username,
        user_id: @user.id,
        cars: @user.cars,
        books: @user.books,
      }
    else
      render json: {
        status: 401,
        errors: ['Verify credentials and try again or signup']
      }
    end
  end

  def cookie_login
    if @found_user.present? && @found_user.is_a?(User)
      token = JsonWebToken.encode(user_id: @found_user.id)
      time = Time.now + 24.hours.to_i
          render json: {
            token: token,
            exp: time.strftime('%m-%d-%Y %H:%M'),
            logged_in: true,
            user: @found_user.username,
            user_id: @found_user.id,
            cars: @found_user.cars,
            books: @found_user.books,
          }

        end
  end

  def is_logged_in?
    if logged_in? && current_user
      render json: {
        logged_in: true,
        user: current_user
      }
    else
      render json: {
        logged_in: true,
        message: 'no such user'
      }
end
end

  def destroy
    logout!
    render json: {
      status: 200,
      logged_out: true
    }
  end

  private

  def session_params
    params.require(:user).permit(:username, :password)
  end


  def find_user
    user_id = session[:user_id]
    @found_user = User.find_by(id: user_id)
  end


end

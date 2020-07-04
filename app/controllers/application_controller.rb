# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ::ActionController::Cookies
  include Response
  include ExceptionHandler

  helper_method :logged_in?, :current_user, :login!, :authorized, :logout!

  def login!

     cookies.encrypted[:user_id] = {
       value: @user.id,
       expires: 1.day.from_now
       }
  end

  def current_user
    @user = User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def logout!
    cookies.delete :user_id
    # session.clear
  end

  def not_found
    render json: { error: 'not_found' }
  end

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      @decoded = JsonWebToken.decode(header)
      @current_user = User.find(@decoded[:user_id])
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue JWT::DecodeError => e
      render json: { errors: e.message }, status: :unauthorized
    end
  end
end

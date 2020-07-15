# frozen_string_literal: true

class ApplicationController < ActionController::API
  include ::ActionController::Cookies
  include Response
  include ExceptionHandler

  helper_method :logged_in?, :current_user, :login!, :logout!

  def login!
    cookies.encrypted[:appointcar] = {
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
    cookies.delete(:appointcar)
  end
end

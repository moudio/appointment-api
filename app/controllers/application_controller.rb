# frozen_string_literal: true
class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  helper_method :logged_in?, :current_user, :login!, :authorized, :logout!

  def login!
    session[:user_id] = @user.id
  end

  def current_user
    @user = User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def authorized
    redirect_to login_path unless logged_in?
  end

  def logout!
    session.clear
  end
end

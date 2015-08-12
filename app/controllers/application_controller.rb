class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protect_from_forgery with: :exception

  helper_method :current_user
  before_action :ensure_logged_in

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def ensure_logged_in
    if session.blank? || session[:user_id].blank?
      redirect_to "/signin"
    end
  end

end

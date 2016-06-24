class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :user_logged_in?

  def current_user
    @current_user ||= UserService.find_user_by_name(session[:username])
  end

  def user_logged_in?
    current_user.class == RegisteredUser
  end

  def discourse_category
    domain = request.domain
    Settings.domain_mapping[domain]
  end
end

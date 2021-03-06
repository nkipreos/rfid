class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  
  protect_from_forgery with: :exception
  before_filter :require_login

  private
  include RfidHelper
  def require_login
    unless !current_user.nil?
      redirect_to root_url
    end
  end

end

# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  #protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  #before_filter :authenticate

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  protected

  def redirect_role
    if session[:user_id]
      @user = Poc.find(session[:user_id])
      if @user.admin
        redirect_to :controller => '/location'
      end
    end
  end

  def authenticate
    success = authenticate_with_http_basic do |email, password|
      @user = User.find_by_email(email)
      @user.password == password
    end
    
    if success
      session[:user_id] = @user.id
    else
      request_http_basic_authentication
    end
  end
end


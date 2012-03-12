class AdminController < ApplicationController
  layout 'admin'
  before_filter :check_admin
  
private
  def check_admin
    return true if User.find(session[:user_id]).admin?
    flash[:error]  = "Access Denied to admin section"
    redirect_to '/'
    return false
  end

end
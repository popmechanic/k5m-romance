class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    authenticate
  end
  
  def login
    cookies[:token] = ""
  end

  def logout
    cookies[:token] = ""
    flash[:notice] = "Logged out"
    redirect_to :action => "login"
  end
  
  def authenticate
    if params[:password] || !cookies[:token].empty?
      password = params[:password] || cookies[:token]
      if Shareholder.find_by_password password
        cookies[:token] = password
        return true
      else
        flash[:notice] = "Incorrect code"
        redirect_to :action => "login"
        return false
      end
    else
      redirect_to :action => "login"
      return false
    end
  end
  
end

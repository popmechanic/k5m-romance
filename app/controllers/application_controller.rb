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
    if params[:code] || !cookies[:token].empty?
      code = params[:code] || cookies[:token]
      if Shareholder.find_by_code code
        cookies[:token] = code
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

class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user
  helper_method :auth_user
  helper_method :user_logged_in?

  rescue_from CanCan::AccessDenied do |exception|
    if user_signed_in?
      redirect_to root_url, :alert => exception.message
    else
      redirect_to "/auth/github", :alert => exception.message
    end
  end
  
  private

  def current_user
    # NOTE: Have to check is the user exists.
    # Encountered an error when the session is valid but a db:reset
    # had been done
    if session[:user_id] and User.exists? session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      @current_user = nil
    end
  end

  def user_logged_in?
    return true unless @current_user.nil?
    return false
  end
  
  def authenticate_user!
    unless current_user
      if request.xhr?
        render :json => "not authorized", :status => :unprocessable_entity
      else
        redirect_to oauth_login_url
      end
    end
  end

end

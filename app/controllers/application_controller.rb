class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def require_not_logged_in
    if logged_in?
      redirect_back_or_to pictures_path
    end
  end
end

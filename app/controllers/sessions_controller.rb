class SessionsController < ApplicationController
  before_filter :require_login, :only => [:destroy]
  
  def new
  end

  def create
    user = login(params[:username], params[:password], params[:remember_me])
    if user
      redirect_back_or_to pictures_path
    else
      flash.now.alert = "Username or password was invalid."
      render :new
    end
  end
  
  def destroy
    logout
    redirect_to root_url
  end
end

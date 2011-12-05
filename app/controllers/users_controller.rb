class UsersController < ApplicationController
  before_filter :require_not_logged_in, :only => [:new, :create]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to pictures_path
    else
      render :new
    end
  end
end

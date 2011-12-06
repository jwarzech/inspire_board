class PicturesController < ApplicationController
  before_filter :require_login
  respond_to :html, :json
  
  def index
    respond_with(@pictures = current_user.pictures)
  end
  
  def create
    respond_with(current_user.pictures.create(params[:picture]))
  end
end

class HomeController < ApplicationController
  before_filter :require_not_logged_in
  
  def index
    @user = User.new
  end
end

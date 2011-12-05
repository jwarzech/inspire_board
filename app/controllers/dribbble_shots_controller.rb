class DribbbleShotsController < ApplicationController
  before_filter :require_login
  respond_to :html, :json
  
  def index
    response = RestClient.get 'http://api.dribbble.com/shots/popular'
    shots = to_hash(response, :shots)
    respond_with shots.to_json(:only => [:url, :short_url, :image_url, :width, :height])
  end
  
  private
  
  def to_hash(json_string, root_node)
    hash_obj = JSON.parse(json_string, :symbolize_names => true)
    hash_obj[root_node]
  end
end

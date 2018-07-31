class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
    @mushrooms = Mushroom.all.limit(3)
  end

  def filter
    @filtered_edible =  Mushroom.where(edible: params[:filter].split("|")).limit(6)
    respond_to do |f|
      f.js
      f.json { render json: @filtered_edible }
      f.html
    end
  end

end

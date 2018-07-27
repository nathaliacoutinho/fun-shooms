class PagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
    @mushrooms = Mushroom.all.limit(3)
  end

  def filter
    # puts params[:filter].split("|")


    @all_mushrooms = Mushroom.all
    @filtered_edible =  Mushroom.where(edible: params[:filter])
    @filtered_color =  Mushroom.where(cap_color: params[:filter])
    respond_to do |f|
      f.js
      f.json { render json: @filteredResults }
      f.html
    end
  end

end

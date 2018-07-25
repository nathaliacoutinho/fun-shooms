class MushroomsController < ApplicationController

  def index
    @mushrooms = Mushroom.all
  end
end

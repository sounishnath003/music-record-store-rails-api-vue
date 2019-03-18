class HomeController < ApplicationController
  def index
    @artists = Artist.all.order("created_at DESC")
    render json: @artists
  end
end

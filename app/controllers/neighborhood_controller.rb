class NeighborhoodController < ApplicationController
# /Get This Lists All the Neighborhoods on Manhatten
  def index

    @neighborhoods = Neighborhood.all
    # This is for Gmaps which I'll use later
    #@json = Bar.all.to_gmaps4rails
  end
# /Get This shows the Popular Bars in Each Neighborhood
  def show
    @neighborhood = Neighborhood.find(params[:id])
    @bars = @neighborhood.bar_info
  end

  def create
    @new_fav_bar = FavoriteBar.new
    @new_fav_bar.name
    @new_fav_bar.url
    @new_fav_bar.img_url
    @new_fav_bar
  end
end
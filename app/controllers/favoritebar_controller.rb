class FavoritebarController < ApplicationController
  # /Get This will list all the Favorite Bars
  def index
    @bars = Favoritebar.all
  end
  # /Get This will show an individual bar Saved
  def show
    @bar = Favoritebar.find(params[:id])
  end

  def save
    @new_fav_bar = FavoriteBar.new
    @new_fav_bar.name =
    @new_fav_bar.url
    @new_fav_bar.img_url
    @new_fav_bar.rating_img_url_small
  end



end
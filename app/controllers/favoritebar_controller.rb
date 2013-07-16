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
    @bar = Favoritebar.new
  end



end
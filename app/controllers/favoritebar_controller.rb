class FavoritebarController < ApplicationController

  def index
    @bars = Favoritebar.all
  end

  def show
    @bar = Favoritebar.find(params[:id])
  end

  def search


  end

  def save
    @bar = Favoritebar.new
  end



end
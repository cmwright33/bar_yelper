class NeighborhoodController < ApplicationController

  def index

    @neighborhoods = Neighborhood.all
    # This is for Gmaps which I'll use later
    #@json = Bar.all.to_gmaps4rails
  end

  def show
    @neighborhood = Neighborhood.find(params[:id])
    @bars = @neighborhood.bar_info
  end

end
class NeighborhoodController < ApplicationController
# /Get This Lists All the Neighborhoods on Manhatten
  def index
    # @json = Favoritebar.all.to_gmaps4rails
    @neighborhoods = Neighborhood.all
    # This is for Gmaps which I'll use later
    #@json = Bar.all.to_gmaps4rails
  end
# /Get This shows the Popular Bars in Each Neighborhood
  def result
    @neighborhood = Neighborhood.find(params[:id])
    @bars = @neighborhood.bar_info

  end

  def new
    client = Yelp::Client.new
    # retrieve details of business via yelp business id
    # raise
      request = Yelp::V2::Business::Request::Id.new(
             :yelp_business_id => params['bar_id'],
             :consumer_key => 'gqIDK_VE3A-5KIrhMHvPWA',
             :consumer_secret => '2y6mzC7tZIbP4h4XN3aWOhp-Jmw',
             :token => 'au_AHWivtCP638uR5bei2MaEjyMhIzIP',
             :token_secret => 'SIIfsthEskvZHEQwqcTvmiGm6kQ')
      @bar = client.search(request)
  end
end
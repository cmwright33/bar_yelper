class NeighborhoodController < ApplicationController
# /Get This Lists All the Neighborhoods on Manhatten
  def index

    @neighborhoods = Neighborhood.all
    # This is for Gmaps which I'll use later
    #@json = Bar.all.to_gmaps4rails
  end
# /Get This shows the Popular Bars in Each Neighborhood
  def result
    @neighborhood = Neighborhood.find(params[:id])

  end

  def save
      client = Yelp::Client.new
      request = Yelp::V2::Search::Request::Location.new(
             :city => 'New York',
             :term => 'sports bar',
             :sort => 2,
             :id   => ,
             :consumer_key => 'gqIDK_VE3A-5KIrhMHvPWA',
             :consumer_secret => '2y6mzC7tZIbP4h4XN3aWOhp-Jmw',
             :token => 'au_AHWivtCP638uR5bei2MaEjyMhIzIP',
             :token_secret => 'SIIfsthEskvZHEQwqcTvmiGm6kQ')
      response = client.search(request)
     @bar = response["businesses"]
      new_fav = Favoritebar.new
      new_fav.name = @bar['name']
      new_fav.image_url = @bar['image_url']
      new_fav.rating_img_url_small = @bar bar['rating_img_url_small']
      new_fav.save
  end
end
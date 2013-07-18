class FavoritebarController < ApplicationController
  # /Get This will list all the Favorite Bars
  def index
    @bars = Favoritebar.all
    @json = @bars.to_gmaps4rails do |bar, marker|
    marker.infowindow render_to_string(:partial => "/favoritebar/infowindow", :locals => { :bar => bar})
    marker.title "#{bar.name}"
    marker.json({ :name => bar.name})
    marker.picture({:picture => "app/assets/images/bar.png",
                    :width => 32,
                    :height => 32})
  end
  end
  # /Get This will show an individual bar Saved
  def show
    @bar = Favoritebar.find(params[:id])
  end

  def save
      client = Yelp::Client.new
      # retrieve details of business via yelp business id

      request = Yelp::V2::Business::Request::Id.new(
             :yelp_business_id => params['bar_id'],
             :consumer_key => 'gqIDK_VE3A-5KIrhMHvPWA',
             :consumer_secret => '2y6mzC7tZIbP4h4XN3aWOhp-Jmw',
             :token => 'au_AHWivtCP638uR5bei2MaEjyMhIzIP',
             :token_secret => 'SIIfsthEskvZHEQwqcTvmiGm6kQ')
      @bar = client.search(request)
      new_fav = Favoritebar.new
      new_fav.name = @bar['name']
      new_fav.city = @bar['location']['city']
      new_fav.address = @bar['location']['address']
      new_fav.img_url = @bar['image_url']
      new_fav.phone = @bar['display_phone']
      binding.pry
      new_fav.rating_img_url_small = @bar['rating_img_url_small']
      new_fav.save
      User.find(session[:user_id]).favoritebars << new_fav
      redirect_to :neighborhoods
  end

  def destroy
    Favoritebar.find(params[:id]).destroy

    redirect_to favoritebar_path
  end

  def update


  end

end
class Neighborhood < ActiveRecord::Base
 attr_accessible :name
 has_many :bars

def bar_info
  client = Yelp::Client.new
   request = Yelp::V2::Search::Request::Location.new(
             :city => 'New York',
             :term => 'sports bar',
             :sort => 2,
             :neighborhood => self.name,
             :consumer_key => 'gqIDK_VE3A-5KIrhMHvPWA',
             :consumer_secret => '2y6mzC7tZIbP4h4XN3aWOhp-Jmw',
             :token => 'au_AHWivtCP638uR5bei2MaEjyMhIzIP',
             :token_secret => 'SIIfsthEskvZHEQwqcTvmiGm6kQ')


             # :consumer_key => ENV['CONSUMER_KEY'],
             # :consumer_secret => ENV['CONSUMER_SECRET'],
             # :token => ENV['TOKEN'],
             # :token_secret => ENV['TOKEN_SECRET'])
   response = client.search(request)
   response["businesses"]
end

end

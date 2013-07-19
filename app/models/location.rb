class Location < ActiveRecord::Base

  geocoded_by :ip_address   # can also be an IP address
  after_validation :geocode

end
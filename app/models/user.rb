class User < ActiveRecord::Base
  has_many_belongs_to_many :favoritebars

end
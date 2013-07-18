class Favoritebar < ActiveRecord::Base
  has_and_belongs_to_many :user
  belongs_to :neighborhoods

  validates :name, uniqueness: true
  validates :name, uniqueness: true
  #validates :rating_img_url_small, uniqueness: true


  # acts_as_gmappable

   # def gmaps4rails_address
   #  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
   #  # {}"#{self.street}, #{self.city}, #{self.country}"
   #  end
end
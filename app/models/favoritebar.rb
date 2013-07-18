class Favoritebar < ActiveRecord::Base
  has_and_belongs_to_many :user
  belongs_to :neighborhoods

  validates :name,  uniqueness: true
  validates :name, :rating_img_url_small, presence: true



end
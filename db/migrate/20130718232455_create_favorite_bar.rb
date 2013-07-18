class CreateFavoriteBar < ActiveRecord::Migration
  def up
    create_table :favoritebars do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps


      t.string :yelp_id
      t.string :name
      t.string :city
      t.string :address
      t.string :phone
      t.string :url
      t.string :img_url
      t.string :rating_img_url_small
      t.references :neighborhoods
      t.timestamps
    end
  end

  def down
    drop_table :favoritebars
  end
end

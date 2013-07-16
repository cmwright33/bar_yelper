class CreateFavoriteBar < ActiveRecord::Migration
  def up
    create_table :favoritebars do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.string :name
      t.string :display_address
      t.string :url
      t.string :img_url
    end
  end

  def down
    drop_table :favoritebars
  end
end


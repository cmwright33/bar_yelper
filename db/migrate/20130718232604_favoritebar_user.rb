class FavoritebarUser < ActiveRecord::Migration
  def up
    create_table :favoritebars_users, :id => false do |t|
      t.integer :user_id
      t.integer :favoritebar_id
    end
  end

  def down
    drop_table :favoritebars_users
  end
end
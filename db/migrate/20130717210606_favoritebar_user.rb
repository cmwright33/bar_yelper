class FavoritebarUser < ActiveRecord::Migration
  def up
    create_table :favoritebars_users, :id => false do |t|
      t.integer :user
      t.integer :favoritebar
    end
  end

  def down
    drop_table :favoritebars_users
  end
end

class CreateNeighborhood < ActiveRecord::Migration
  def up
    create_table :neighborhoods do |t|
      t.string :name
      t.references :favoritebars
    end
  end

  def down
    drop_table :neighborhoods
  end
end

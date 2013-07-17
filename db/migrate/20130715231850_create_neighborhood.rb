class CreateNeighborhood < ActiveRecord::Migration
  def up
    create_table :neighborhoods do |t|
      t.string :name
      t.references :bars
    end
  end

  def down
    drop_table :neighborhoods
  end
end

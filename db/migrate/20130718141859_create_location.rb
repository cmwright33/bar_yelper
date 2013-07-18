class CreateLocation < ActiveRecord::Migration
  def up
    create_table :locations do |t|
        t.float :latitude
        t.float :longitude
        t.boolean :gmaps
        t.references :user_id
      end
  end

  def down
    drop_table :locations
  end
end

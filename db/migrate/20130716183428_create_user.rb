class CreateUser < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name
      t.string :password_hash
      t.string :password_salt

      t.timestamps
    end
  end

  def down
    drop_table :users
  end
end

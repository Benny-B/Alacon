class RemoveLatitudeFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :latitude
  end

  def down
    add_column :users, :latitude, :int
  end
end

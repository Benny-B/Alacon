class RemoveLongitudeFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :longitude
  end

  def down
    add_column :users, :longitude, :int
  end
end

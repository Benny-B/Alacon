class AddLongitudeToUser < ActiveRecord::Migration
  def change
    add_column :users, :longitude, :int
  end
end

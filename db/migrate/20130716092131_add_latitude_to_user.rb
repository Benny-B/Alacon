class AddLatitudeToUser < ActiveRecord::Migration
  def change
    add_column :users, :latitude, :int
  end
end

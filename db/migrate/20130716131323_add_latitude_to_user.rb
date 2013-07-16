class AddLatitudeToUser < ActiveRecord::Migration
  def change
    add_column :users, :latitude, :double
  end
end

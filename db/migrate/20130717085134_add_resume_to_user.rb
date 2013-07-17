class AddResumeToUser < ActiveRecord::Migration
  def change
    add_column :users, :Resume, :string
  end
end

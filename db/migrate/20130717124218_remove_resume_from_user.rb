class RemoveResumeFromUser < ActiveRecord::Migration
  def up
    remove_column :users, :Resume
  end

  def down
    add_column :users, :Resume, :string
  end
end

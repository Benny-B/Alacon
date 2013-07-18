class RemoveDataFromProject < ActiveRecord::Migration
  def up
    remove_column :projects, :date
  end

  def down
    add_column :projects, :date, :integer
  end
end

class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :type
      t.string :date
      t.string :position
      t.string :role
      t.string :achievements
      t.string :description
      t.string :contributors
      t.integer :user_id

      t.timestamps
    end
    add_index :projects, [:user_id, :created_at]
  end
end

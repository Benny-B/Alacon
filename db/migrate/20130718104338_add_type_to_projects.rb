class AddTypeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :type_of_project, :string
  end
end

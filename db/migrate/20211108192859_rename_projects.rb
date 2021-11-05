class RenameProjects < ActiveRecord::Migration[6.1]
  def change
    rename_table :projects, :tasks
  end
end

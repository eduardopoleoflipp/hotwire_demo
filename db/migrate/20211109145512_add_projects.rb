class AddProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    add_column :tasks, :project_id, :integer
  end
end

class AddCompleted < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :completed_at, :date
  end
end

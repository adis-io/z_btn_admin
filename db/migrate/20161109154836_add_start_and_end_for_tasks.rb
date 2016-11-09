class AddStartAndEndForTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :tasks, :started_at, :timestamp
    add_column :tasks, :finished_at, :timestamp
  end
end

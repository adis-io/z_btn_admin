class CreateTasks1 < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.timestamp :started_at
      t.timestamp :finished_at
    end
  end
end

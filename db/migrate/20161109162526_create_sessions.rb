class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.timestamp :started_at
      t.timestamp :finished_at
      t.integer :task_id
      t.timestamps
    end
  end
end

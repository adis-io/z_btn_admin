class NoSid < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :sid
  end
end

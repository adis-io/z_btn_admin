class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :sid
      t.string :first_name
      t.string :last_name
      t.timestamps
    end

    add_index :users, :sid, unique: true
  end
end

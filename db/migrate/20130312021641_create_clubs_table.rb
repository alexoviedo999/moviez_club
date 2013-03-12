class CreateClubsTable < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :name
      t.integer :user_id
      t.integer :movie_id

      t.timestamps
    end
    add_index :clubs, :user_id
    add_index :clubs, :movie_id
  end
end

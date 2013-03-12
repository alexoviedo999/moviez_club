class CreateMoviesTable < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.integer :released
      t.string :genre
      t.string :director
      t.string :writer
      t.string :actors
      t.string :plot
      t.string :poster
      t.integer :imdbRating
      t.integer :imdbVotes
      t.string :imdbID
      t.string :response
      t.integer :rank

      t.timestamps
    end
  end
end

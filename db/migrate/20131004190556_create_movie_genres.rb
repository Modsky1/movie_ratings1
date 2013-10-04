class CreateMovieGenres < ActiveRecord::Migration
  def change
    create_table :movie_genres do |t|
      t.integer :movie_id, null: false
      t.integer :genre_id, null: false

      t.timestamps
    end
  end
end

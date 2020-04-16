class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster_path
      t.string :release_date
      t.integer :vote_average
      t.string :overview
      # t.integer :genre_ids, array: true, default: []
      t.timestamps
    end
  end
end

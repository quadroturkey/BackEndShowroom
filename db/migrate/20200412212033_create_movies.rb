class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.string :genres
      t.string :description

      t.timestamps
    end
  end
end

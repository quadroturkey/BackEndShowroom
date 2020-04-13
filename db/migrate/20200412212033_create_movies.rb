class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.text :genres, array: true, default: []
      t.string :description

      t.timestamps
    end
  end
end

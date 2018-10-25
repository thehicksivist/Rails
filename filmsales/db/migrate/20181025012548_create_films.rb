class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :year
      t.string :director
      t.string :genre
      t.decimal :price

      t.timestamps
    end
  end
end

class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :books
      t.string :image

      t.timestamps
    end
  end
end

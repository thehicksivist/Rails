class RenameAuthorTitleToName < ActiveRecord::Migration[5.2]
  def change
    rename_column :authors, :title, :name
  end
end

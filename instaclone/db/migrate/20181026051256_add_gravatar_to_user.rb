class AddGravatarToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gravatar, :string
  end
end

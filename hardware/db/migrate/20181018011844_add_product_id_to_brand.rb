class AddProductIdToBrand < ActiveRecord::Migration[5.2]
  def change
    # add_column <table>, <field>, <type>
    add_column :brands, :product_id, :integer
  end
end

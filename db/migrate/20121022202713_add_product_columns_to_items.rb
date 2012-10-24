class AddProductColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :product_brand, :string
    add_column :items, :product_description, :string
    add_column :items, :product_size, :string
  end
end

class AddRetailPriceToItems < ActiveRecord::Migration
  def change
    add_column :items, :retail_price, :decimal
  end
end

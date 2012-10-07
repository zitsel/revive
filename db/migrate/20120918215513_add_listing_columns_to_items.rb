class AddListingColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :ebay_id, :string
    add_column :items, :sold_price, :decimal
    add_column :items, :shipping_charge, :decimal
    add_column :items, :shipping_paid, :decimal
    add_column :items, :listed_date, :date
    add_column :items, :sold_date, :date
  end
end

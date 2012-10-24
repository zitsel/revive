class AddColumnsToEbayListings < ActiveRecord::Migration
  def change
    add_column :ebay_listings, :duration, :integer
    add_column :ebay_listings, :start_price, :decimal
    add_column :ebay_listings, :end_price, :decimal
    add_column :ebay_listings, :status, :string
  end
end

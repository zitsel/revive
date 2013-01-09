class AddTypeToEbayListings < ActiveRecord::Migration
  def change
    add_column :ebay_listings, :type, :string
  end
end

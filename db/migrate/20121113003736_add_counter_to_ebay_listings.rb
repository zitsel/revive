class AddCounterToEbayListings < ActiveRecord::Migration
  def change
    add_column :ebay_listings, :list_count, :integer
  end
end

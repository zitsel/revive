class CreateEbayListings < ActiveRecord::Migration
  def change
    create_table :ebay_listings do |t|
      t.integer :item_id
      t.integer :ebay_id

      t.timestamps
    end
  end
end

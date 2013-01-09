class RenameType < ActiveRecord::Migration
  def up
      rename_column :ebay_listings, :type, :listing_type
  end

  def down
  end
end

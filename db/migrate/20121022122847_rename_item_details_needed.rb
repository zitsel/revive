class RenameItemDetailsNeeded < ActiveRecord::Migration
  def change
      rename_table :item_details_neededs, :needed_item_details

  end

  def down
  end
end

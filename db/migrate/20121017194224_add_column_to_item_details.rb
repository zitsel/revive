class AddColumnToItemDetails < ActiveRecord::Migration
  def change
    add_column :item_details, :item_details_needed_id, :integer
  end
end

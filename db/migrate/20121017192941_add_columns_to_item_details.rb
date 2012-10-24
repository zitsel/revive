class AddColumnsToItemDetails < ActiveRecord::Migration
  def change
    add_column :item_details, :item_id, :integer
    add_column :item_details, :details_needed_id, :integer
    add_column :item_details, :value, :string
  end
end

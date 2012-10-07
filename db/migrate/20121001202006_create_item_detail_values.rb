class CreateItemDetailValues < ActiveRecord::Migration
  def change
    create_table :item_detail_values do |t|
      t.integer :item_id
      t.integer :item_detail_id
      t.string :value

      t.timestamps
    end
  end
end

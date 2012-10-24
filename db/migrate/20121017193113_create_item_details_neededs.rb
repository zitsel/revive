class CreateItemDetailsNeededs < ActiveRecord::Migration
  def change
    create_table :item_details_neededs do |t|
      t.integer :dept_id
      t.string :value
      t.string :group
      t.integer :order

      t.timestamps
    end
  end
end

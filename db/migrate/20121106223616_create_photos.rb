class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :item_id
      t.string :filename
      t.integer :order

      t.timestamps
    end
  end
end

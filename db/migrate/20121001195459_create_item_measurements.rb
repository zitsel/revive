class CreateItemMeasurements < ActiveRecord::Migration
  def change
    create_table :item_measurements do |t|
      t.string :name

      t.timestamps
    end
  end
end

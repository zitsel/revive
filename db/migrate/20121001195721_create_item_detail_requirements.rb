class CreateItemDetailRequirements < ActiveRecord::Migration
  def change
    create_table :item_detail_requirements do |t|
      t.string :department_id
      t.string :item_detail_id

      t.timestamps
    end
  end
end

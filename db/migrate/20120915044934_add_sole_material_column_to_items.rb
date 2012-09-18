class AddSoleMaterialColumnToItems < ActiveRecord::Migration
  def change
    add_column :items, :sole_material, :string
  end
end

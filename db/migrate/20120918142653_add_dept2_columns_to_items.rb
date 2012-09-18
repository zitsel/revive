class AddDept2ColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :tie_width, :decimal
    add_column :items, :tie_length, :decimal
    add_column :items, :tie_material, :string
    add_column :items, :tie_construction, :string
  end
end

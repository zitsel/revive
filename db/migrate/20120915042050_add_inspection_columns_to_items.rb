class AddInspectionColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :condition, :integer
    add_column :items, :notes, :text
  end
end

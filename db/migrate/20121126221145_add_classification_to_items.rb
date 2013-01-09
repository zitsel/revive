class AddClassificationToItems < ActiveRecord::Migration
  def change
    add_column :items, :classification, :string
  end
end

class AddCollarColumnToItems < ActiveRecord::Migration
  def change
    add_column :items, :collar, :integer
  end
end

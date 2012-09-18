class AddColumnToItems < ActiveRecord::Migration
  def change
    add_column :items, :trouser_style, :string
  end
end

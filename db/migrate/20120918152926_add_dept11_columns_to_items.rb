class AddDept11ColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :coat_type, :string
    add_column :items, :full_sleeve, :integer
  end
end

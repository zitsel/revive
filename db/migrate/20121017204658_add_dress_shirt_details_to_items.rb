class AddDressShirtDetailsToItems < ActiveRecord::Migration
  def change
    add_column :items, :tagged_size, :string
    add_column :items, :collar_type, :string
    add_column :items, :cuff_type, :string
    add_column :items, :button_type, :string
    add_column :items, :shirt_length, :integer
  end
end

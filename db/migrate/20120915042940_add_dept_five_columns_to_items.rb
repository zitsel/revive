class AddDeptFiveColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :brand, :string
    add_column :items, :model, :string
    add_column :items, :model_number, :string
    add_column :items, :style, :string
    add_column :items, :color, :string
    add_column :items, :size, :string
    add_column :items, :width, :string
    add_column :items, :last, :string
    add_column :items, :upper_material, :string
    add_column :items, :heel_material, :string
    add_column :items, :sole, :string
    add_column :items, :heel, :string
    add_column :items, :lining, :string
    add_column :items, :insole, :string
    add_column :items, :outsole_length, :decimal
    add_column :items, :outsole_width, :decimal
    add_column :items, :insole_length, :decimal
    add_column :items, :insole_width, :decimal
  end
end

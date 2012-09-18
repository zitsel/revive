class AddDept10ColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :retailer, :string
    add_column :items, :designer, :string
    add_column :items, :cloth_maker, :string
    add_column :items, :cloth_color, :string
    add_column :items, :cloth_type, :string
    add_column :items, :pattern, :string
    add_column :items, :jacket_buttons, :string
    add_column :items, :jacket_vents, :string
    add_column :items, :lapel_type, :string
    add_column :items, :pocket_type, :string
    add_column :items, :coat_lining, :string
    add_column :items, :cuff_buttons, :string
    add_column :items, :coat_construction, :string
    add_column :items, :trouser_stype, :string
    add_column :items, :trouser_fastenings, :string
    add_column :items, :trouser_lining, :string
    add_column :items, :trouser_details, :string
    add_column :items, :shoulder, :decimal
    add_column :items, :chest, :decimal
    add_column :items, :jacket_waist, :decimal
    add_column :items, :sleeve, :decimal
    add_column :items, :cuff_extra, :decmial
    add_column :items, :jacket_length, :decmial
    add_column :items, :trouser_waist, :decimal
    add_column :items, :trouser_waist_extra, :decimal
    add_column :items, :inseam, :decimal
  end
end

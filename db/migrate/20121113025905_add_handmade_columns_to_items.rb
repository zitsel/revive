class AddHandmadeColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :artisan, :string
    add_column :items, :fabric_source, :string
    add_column :items, :mfg_date, :string
  end
end

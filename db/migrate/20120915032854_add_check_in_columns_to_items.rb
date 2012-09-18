class AddCheckInColumnsToItems < ActiveRecord::Migration
  def change
    add_column :items, :weight, :decimal
    add_column :items, :department_id, :integer
    add_column :items, :purchase_price, :decimal
  end
end

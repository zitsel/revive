class AddTransIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :transaction_id, :integer
  end
end

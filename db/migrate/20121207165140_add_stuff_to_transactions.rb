class AddStuffToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :completed_by, :string
    add_column :transactions, :approved_by, :string
  end
end

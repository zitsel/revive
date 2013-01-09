class AddAccountToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :account, :string
    add_column :transactions, :account_reference_number, :string
  end
end

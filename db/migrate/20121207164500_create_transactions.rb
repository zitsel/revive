class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :approved_amount

      t.timestamps
    end
  end
end

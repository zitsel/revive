class CreateChecks < ActiveRecord::Migration
  def change
    create_table :checks do |t|
      t.date :date
      t.integer :check_number
      t.string :amount_words
      t.decimal :amount_number
      t.string :pay_to

      t.timestamps
    end
  end
end

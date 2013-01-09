class AddProcessingPaidToItems < ActiveRecord::Migration
  def change
    add_column :items, :processing_paid, :boolean
  end
end

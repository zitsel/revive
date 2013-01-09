class AddCounterToItems < ActiveRecord::Migration
  def change
    add_column :items, :listed_count, :integer
  end
end

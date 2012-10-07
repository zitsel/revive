class AddStatusToItems < ActiveRecord::Migration
  def change
    add_column :items, :status_id, :integer
  end
end

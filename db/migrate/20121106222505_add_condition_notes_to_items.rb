class AddConditionNotesToItems < ActiveRecord::Migration
  def change
    add_column :items, :condition_notes, :text
  end
end

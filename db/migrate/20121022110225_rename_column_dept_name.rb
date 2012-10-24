class RenameColumnDeptName < ActiveRecord::Migration
  def up
      rename_column :item_details_neededs, :dept_id, :department_id
  end

  def down
  end
end

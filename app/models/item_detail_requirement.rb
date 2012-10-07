class ItemDetailRequirement < ActiveRecord::Base
  attr_accessible :department_id, :item_detail_id
  belongs_to :departments
  belongs_to :item_detail
end

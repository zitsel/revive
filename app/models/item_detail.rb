class ItemDetail < ActiveRecord::Base
  attr_accessible :item_id, :item_details_needed_id, :value
  belongs_to :item
  belongs_to :item_details_needed

end

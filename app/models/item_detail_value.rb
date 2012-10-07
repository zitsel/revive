class ItemDetailValue < ActiveRecord::Base
  attr_accessible :item_detail_id, :item_id, :value
  belongs_to :item
  belongs_to :item_details
end

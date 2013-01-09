class Photo < ActiveRecord::Base
  attr_accessible :filename, :item_id, :order
end

class EbayListing < ActiveRecord::Base
  attr_accessible :ebay_id, :item_id, :start_amount, :end_amount, :status, :duration
  belongs_to :item
  before_save :sync_statuses
  scope :active, where(status:"active")
  
  def sync_statuses
      if status=="active"
      	Item.find(item._id).update_attribute(:status_id, "4")
      elsif status=="unsold"
      	Item.find(item._id).update_attribute(:status_id, "3")
      elsif status=="sold"
      	 Item.find(item._id).update_attribute(:status_id, "5")
      end
  end
end

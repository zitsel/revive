class EbayListing < ActiveRecord::Base
  attr_accessible :ebay_id, :item_id, :start_amount, :end_amount, :status, :duration, :listing_type
  validates :item_id, :presence => true
  validates :ebay_id, :uniqueness => true
  validates :ebay_id, :numericality => true
  validates :ebay_id, :length => {:in => 12..12}
  belongs_to :item
  before_save :sync_statuses
  scope :active, where(status:"active")
  before_save :set_processing_paid


  def sync_statuses
      if status=="active"
      	Item.find(item._id).update_attribute(:status_id, "4")
      elsif status=="unsold"
      	Item.find(item._id).update_attribute(:status_id, "3")
      elsif status=="sold"
      	 Item.find(item._id).update_attribute(:status_id, "5")
        elsif status=="pending"
          Item.find(item._id).update_attribute(:status_id, "10")
          
      end
  end

  def set_processing_paid
    if listing_type=="new"
      Item.find(item._id).update_attribute(:processing_paid,"false")
    end
  end

end


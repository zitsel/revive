class Item < ActiveRecord::Base
  attr_protected
  belongs_to :status
  belongs_to :department
  belongs_to :transaction
  has_many :item_details
  has_many :ebay_listings
  accepts_nested_attributes_for :status
  accepts_nested_attributes_for :department
  accepts_nested_attributes_for :item_details
  accepts_nested_attributes_for :ebay_listings

  scope :active, where(status_id: "4")
  scope :pending, where(status_id: "10")
  scope :available, where(:status_id => [4,3,10])
  scope :sold, where(status_id: "5")
  scope :listing, where(status_id: "3")
  scope :photographs, where(status_id: "2")

  validates :name, :weight, :department_id, :purchase_price, :presence => true
  validates :weight, :department_id, :purchase_price, :numericality => true
  validates :name, :length => { :minimum => 5 }

  scope :neckwear, where(department_id: "2")
  scope :shirts, where(department_id: "3")
  scope :shoes, where(department_id: "5")
  scope :jackets, where(department_id: "9")
  scope :suits, where(department_id: "10")
  scope :outerwear, where(department_id: "11")
  scope :sweaters, where(department_id: "13")
  scope :handmades, where(department_id: "15")
  scope :recent, Item.available.order("id desc").limit(25)
  scope :rack, where(classification: "rack")
  scope :mainline, where(classification: "mainline")
  scope :sartorial, where(classification: "sartorial")
  
end

class Item < ActiveRecord::Base
  attr_accessible :name, :weight, :department_id, :purchase_price, :item_id, :condition, :notes, :brand, :model, :model_number, :style, :color, :size, :width, :last, :upper_material, :sole_material, :heel_material, :sole, :heel, :lining, :insole, :outsole_length, :outsole_width, :insole_length, :insole_width, :tie_width, :tie_length, :tie_material, :tie_construction, :pattern, :retailer, :designer, :model, :cloth_maker, :cloth_color, :cloth_type, :pattern, :jacket_buttons, :jacket_vents, :lapel_type, :pocket_type, :cuff_buttons, :coat_type, :full_sleeve, :coat_lining, :coat_construction, :trouser_style, :trouser_fastenings, :trouser_lining, :trouser_details, :shoulder, :chest, :jacket_waist, :sleeve, :cuff_extra, :jacket_length, :trouser_waist, :trouser_waist_extra, :inseam, :ebay_id, :listed_date, :sold_date, :sold_price, :shipping_charge, :shipping_paid, :status_id, :purchase_date, :retail_price, :product_brand, :product_size, :product_description
  belongs_to :status
  belongs_to :department
  has_many :item_detail_values
  has_many :ebay_listings
  accepts_nested_attributes_for :status
  accepts_nested_attributes_for :department
  accepts_nested_attributes_for :item_detail_values
  scope :active, where(status_id: "4")
  scope :listing, where(status_id: "3")
  #validates :name, :weight, :department_id, :purchase_price, :presence => true
  #validates :weight, :department_id, :purchase_price, :numericality => true
  #validates :name, :length => { :minimum => 10 }
  scope :neckwear, where(department_id: "2")
  scope :shirts, where(department_id: "3")
  scope :shoes, where(department_id: "5")
  scope :jackets, where(department_id: "9")
  scope :suits, where(department_id: "10")
  scope :outerwear, where(department_id: "11")
  scope :sweaters, where(department_id: "13")
  scope :recent, Item.active.limit(25)
end

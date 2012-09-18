class Item < ActiveRecord::Base
  attr_accessible :name, :weight, :department_id, :purchase_price, :item_id, :condition, :notes, :brand, :model, :model_number, :style, :color, :size, :width, :last, :upper_material, :sole_material, :heel_material, :sole, :heel, :lining, :insole, :outsole_length, :outsole_width, :insole_length, :insole_width, :tie_width, :tie_length, :tie_material, :tie_construction, :pattern, :retailer, :designer, :model, :cloth_maker, :cloth_color, :cloth_type, :pattern, :jacket_buttons, :jacket_vents, :lapel_type, :pocket_type, :cuff_buttons, :coat_type, :full_sleeve, :coat_lining, :coat_construction, :trouser_style, :trouser_fastenings, :trouser_lining, :trouser_details, :shoulder, :chest, :jacket_waist, :sleeve, :cuff_extra, :jacket_length, :trouser_waist, :trouser_waist_extra, :inseam
  validates :name, :weight, :department_id, :purchase_price, :presence => true
  validates :weight, :department_id, :purchase_price, :numericality => true
  validates :name, :length => { :minimum => 10 }
end

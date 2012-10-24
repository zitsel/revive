class Department < ActiveRecord::Base
  attr_accessible :name
  has_many :items
  has_many :needed_item_details
end

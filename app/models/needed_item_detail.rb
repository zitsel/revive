class NeededItemDetail < ActiveRecord::Base
  attr_accessible :department_id, :group, :order, :value
  belongs_to :department
end

class Department < ActiveRecord::Base
  attr_accessible :name
  has_many :items
end

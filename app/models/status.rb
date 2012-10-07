class Status < ActiveRecord::Base
  attr_accessible :description, :name
  has_many :items
  validates :name, :presence => true, :uniqueness => true
end

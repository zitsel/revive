class Status < ActiveRecord::Base
  attr_protected
  has_many :items
  validates :name, :presence => true, :uniqueness => true
end

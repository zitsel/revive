class Transaction < ActiveRecord::Base
  attr_protected
  has_many :items
  accepts_nested_attributes_for :items
end

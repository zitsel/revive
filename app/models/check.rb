class Check < ActiveRecord::Base
  attr_accessible :amount_number, :amount_words, :check_number, :date, :pay_to
end

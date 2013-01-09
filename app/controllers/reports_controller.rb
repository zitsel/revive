class ReportsController < ApplicationController
	http_basic_authenticate_with :name => "admin", :password => "vtq2tyib"

	def index
	end

	def sales
		@from = params[:from] 
		@to = params[:to]
		@from && @to ? @items=Item.sold.where(:created_at=>(@from..@to)).order(:department_id) : @items = Item.sold.order(:department_id)
		
	end
	def department_performance
	end
	def awaiting_shipment
		@sold = Item.joins(:ebay_listings).where(:ebay_listings => {:status=>"awaiting shipment"}).order(:department_id)
	end
end

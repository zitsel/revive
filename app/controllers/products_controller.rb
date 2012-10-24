class ProductsController < ApplicationController
	
	def index
	end

	def categorized
		@category=params[:category]

		if @category.nil?
			@items=Item.active.recent
		else
		@items=Item.active.send(@category)
		end
	end
	def show
	    @item=Item.find(params[:id])
	    @listing=EbayListing.active.find_by_item_id(@item.id)
	end
end

class ProductsController < ApplicationController
	
	def index
	end

	def categorized
		@category=params[:category]
		@classification=params[:classification]
		if @category.nil?
			@classification ? @items=Item.send(@classification).recent : @items.Item.recent
		else
			@classification ? @items=Item.available.send(@classification).send(@category) : @items=Item.available.send(@category)
		end
	end
	def show
	    @item=Item.find(params[:id])
	    @listing = EbayListing.active.find_by_item_id(@item.id)
	end
	def ebay
		@item=Item.find(params[:id])
	end

end

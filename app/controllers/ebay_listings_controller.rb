class EbayListingsController < ApplicationController
  http_basic_authenticate_with :name => "admin", :password => "vtq2tyib"

    @items = Item.listing

    def new
        @ebay_listing = EbayListing.new
        @items = Item.listing
    end

    def index
	 @listings = EbayListing.find(:all,:order => 'item_id')
   end
    
    def show
    @ebay_listing = EbayListing.find(params[:id])
    end

   def edit
    @ebay_listing = EbayListing.find(params[:id])
    
    end

    def create

    @ebay_listing = EbayListing.new(params[:ebay_listing])
    respond_to do |format|
      if @ebay_listing.save
        format.html { redirect_to :back, notice: 'Item was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

   def update
    @ebay_listing = EbayListing.find(params[:id])
    
    respond_to do |format|
     if @ebay_listing.update_attributes(params[:ebay_listing])
     format.html { redirect_to ebay_listings_path, notice: 'Item was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end


end

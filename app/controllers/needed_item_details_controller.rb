class NeededItemDetailsController < ApplicationController
http_basic_authenticate_with :name => "admin", :password => "vtq2tyib"

    
    def show
    @department = Department.find(params[:department_id])
    @needed_item_detail = NeededItemDetail.new
    @details_list = NeededItemDetail.find_all_by_department_id(@department)
    end

   def new
    @needed_item_detail = NeededItemDetail.new
    
    
    end

    def create

    @needed_item_detail = NeededItemDetail.new(params[:needed_item_detail])
    respond_to do |format|
      if @needed_detail.save
        format.html { redirect_to :back, notice: 'Item was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

   def update
    @needed_item_detail = NeededItemDetail.find(params[:id])
    
    respond_to do |format|
     if @needed_item_detail.update_attributes(params[:needed_item_detail])
     format.html { redirect_to :back, notice: 'Item was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end


end

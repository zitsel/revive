class Admin::Inventory::ItemsController < ApplicationController
    http_basic_authenticate_with :name => "admin", :password => "vtq2tyib"
 
  def index
    @items = Item.where("name is not null")
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
    end
  end

  def inspection
      @item = Item.find(params[:id])
	  respond_to do |format|
	  format.html
	  format.json { render json: @item }
      end

  end
  def processing
      @item = Item.find(params[:id])
  end
  def auction
      @item = Item.find(params[:id])
  end
  def listing
      @item = Item.find(params[:id])
      @statuses = Status.all
  end
  # GET /items/1
  # GET /items/1.json
  def show
    @item = Item.find(params[:id])
    if @item.department_id==2 
	@package_weight = 25
    elsif @item.department_id==5
	@package_weight = 225
    elsif @item.department_id==9 or @item.department_id==10
	@package_weight = 250
    elsif @item.department_id==11
	@package_weight = 350
    elsif @item.department_id==3
	@package_weight = 25
    else
	@package_weight = 250
    end
    unless @item.weight
	@item.weight=1234
    end
    @ship_weight = @package_weight + @item.weight
    @ship_ounces = @ship_weight/28.349
    @ship_imperial = @ship_ounces.divmod(16)
   
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end

  def status
      if params[:name] == "all"
	  @items = Item.all
      else
      @status = Status.find_by_name(params[:name])
      @items = Item.find_all_by_status_id(@status.id)
      end
  end

  # GET /items/new
  # GET /items/new.json
  def new
    @item = Item.new
    @departments = Department.all
  end

  # GET /items/1/edit
  def edit
      @departments = Department.all
      @statuses = Status.all
    @item = Item.find(params[:id])
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(params[:item])

    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
        format.json { render json: @item, status: :created, location: @item }
      else
        format.html { render action: "new" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /items/1
  # PUT /items/1.json
  def update
    @item = Item.find(params[:id])
    
    respond_to do |format|
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item = Item.find(params[:id])
    @item.destroy

    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
    end
  end
end

class ItemsController < ApplicationController
http_basic_authenticate_with :name => "admin", :password => "vtq2tyib"
  def index
    @items = Item.active
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
  
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @item }
    end
  end


  def status
      if params[:name] == "all"
        @items = Item.all
      else
        @items = Item.where(:status_id => Status.find_by_name(params[:name])).order("id ASC").order("retail_price DESC")
      end
  end

  # GET /items/new
  # GET /items/new.json
  def new
    @item = Item.new
    @departments = Department.all
    @statuses = Status.all
  end

  # GET /items/1/edit
  def edit
      @departments = Department.all
      @statuses = Status.all
    @item = Item.find(params[:id])
  end

  def retail
    @item = Item.find(params[:id])
    @item.product_brand ? nil : @item.product_brand=@item.brand ? @item.brand : @item.product_brand = @item.designer #set product_brand - all items either have brand or designer

    @item.product_description ? nil : 
      case @item.department_id
        when 2 then @item.product_description = "#{@item.color.titleize} #{@item.pattern.titleize} #{@item.tie_material.titleize} Necktie"
        when 3 then @item.product_description = "#{@item.cloth_color.titleize} #{@item.collar_type.titleize} #{@item.pattern.titleize} #{@item.cloth_type.titleize} Shirt"
        when 5 then @item.product_description = "#{@item.model.titleize} (#{@item.model_number}) #{@item.color.titleize} #{@item.style.titleize} Shoes"
        when 9 then @item.product_description = "#{@item.cloth_color.titleize} #{@item.pattern.titleize} #{@item.cloth_type.titleize} Jacket"
        when 10 then @item.product_description = "#{@item.cloth_color.titleize} #{@item.pattern.titleize} #{@item.cloth_type.titleize} Suit"
        when 11 then @item.product_description = "#{@item.coat_type.titleize} #{@item.cloth_color.titleize} #{@item.pattern.titleize} #{@item.cloth_type.titleize}"
        when 13 then @item.product_description = "#{@item.cloth_color.titleize} #{@item.pattern.titleize} #{@item.cloth_type.titleize} #{@item.style.titleize} Sweater"
        when 15 then @item.product_description = "Handmade #{@item.color.titleize} #{@item.tie_material.titleize} #{@item.pattern.titleize} #{@item.model} Reclaimed #{@item.fabric_source} Cloth"
      end

    if @item.department_id == 9 || @item.department_id == 10
      case
        when @item.jacket_length.between?(30,32)
          @jlvar = 0
        when @item.jacket_length < 30 
          @jlvar = @item.jacket_length-30
        when @item.jacket_length > 32
          @jlvar = @item.jacket_length-32
      end
      case 
        when @item.sleeve.between?(24,26)
          @slvar = 0
        when @item.sleeve.to_f < 24
          @slvar = @item.sleeve-24
        when @item.sleeve.to_f > 26
          @slvar = @item.sleeve-26
      end

      @var = @slvar+@jlvar
      case
        when @var < 0
          @guess = "S"
        when @var == 0 
          @guess = "R"
        when @var > 0
          @guess = "L"
      end
    end

    @item.product_size ? nil :
      case @item.department_id
        when 2 then @item.product_size = "Width: #{@item.tie_width}\" Length: #{@item.tie_length.to_i}\""
        when 3 then @item.product_size = "#{@item.collar}/#{@item.sleeve}"
        when 5 then @item.product_size = "#{@item.size} #{@item.width}"
        when 9 then @item.product_size = "#{(@item.chest*2-4).to_i} #{@guess}"
        when 10 then @item.product_size = "#{(@item.chest*2-4).to_i} #{@guess}"
        when 11 then @item.product_size = "#{@item.size}"
        when 13 then @item.product_size = "#{@item.tagged_size}"
        when 15 then @item.product_size = "Width: #{@item.tie_width}\" Length: #{@item.tie_length.to_i}\""
      end

  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(params[:item])
    
    @item.status_id="1"
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
    if @item.status_id==1
      @item.status_id=2
    end
    
    
    respond_to do |format|
      if @item.update_attributes(params[:item])
        case @item.status.name
        when "processing" then format.html { redirect_to processing_item_path(@item), notice: 'Item was successfully updated.' }
        when "photographs" then if @item.product_brand == nil
	    format.html { redirect_to retail_item_path(@item), notice: 'Item was successfully updated.'}
	else format.html {redirect_to @item, notice: 'Item was successfully     updated'}

	end
        else format.html {redirect_to @item, notice: 'Item was successfully updated'}
        end
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

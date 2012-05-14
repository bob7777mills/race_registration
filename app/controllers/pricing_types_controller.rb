class PricingTypesController < ApplicationController
  # GET /pricing_types
  # GET /pricing_types.json
  def index
    @pricing_types = PricingType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @pricing_types }
    end
  end

  # GET /pricing_types/1
  # GET /pricing_types/1.json
  def show
    @pricing_type = PricingType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @pricing_type }
    end
  end

  # GET /pricing_types/new
  # GET /pricing_types/new.json
  def new
    @pricing_type = PricingType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @pricing_type }
    end
  end

  # GET /pricing_types/1/edit
  def edit
    @pricing_type = PricingType.find(params[:id])
  end

  # POST /pricing_types
  # POST /pricing_types.json
  def create
    @pricing_type = PricingType.new(params[:pricing_type])

    respond_to do |format|
      if @pricing_type.save
        format.html { redirect_to @pricing_type, :notice => 'Pricing type was successfully created.' }
        format.json { render :json => @pricing_type, :status => :created, :location => @pricing_type }
      else
        format.html { render :action => "new" }
        format.json { render :json => @pricing_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pricing_types/1
  # PUT /pricing_types/1.json
  def update
    @pricing_type = PricingType.find(params[:id])

    respond_to do |format|
      if @pricing_type.update_attributes(params[:pricing_type])
        format.html { redirect_to @pricing_type, :notice => 'Pricing type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @pricing_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pricing_types/1
  # DELETE /pricing_types/1.json
  def destroy
    @pricing_type = PricingType.find(params[:id])
    @pricing_type.destroy

    respond_to do |format|
      format.html { redirect_to pricing_types_url }
      format.json { head :no_content }
    end
  end
end

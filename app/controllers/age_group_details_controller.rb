class AgeGroupDetailsController < ApplicationController
  # GET /age_group_details
  # GET /age_group_details.json
  def index
    @age_group_details = AgeGroupDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @age_group_details }
    end
  end

  # GET /age_group_details/1
  # GET /age_group_details/1.json
  def show
    @age_group_detail = AgeGroupDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @age_group_detail }
    end
  end

  # GET /age_group_details/new
  # GET /age_group_details/new.json
  def new
    @age_group_detail = AgeGroupDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @age_group_detail }
    end
  end

  # GET /age_group_details/1/edit
  def edit
    @age_group_detail = AgeGroupDetail.find(params[:id])
  end

  # POST /age_group_details
  # POST /age_group_details.json
  def create
    @age_group_detail = AgeGroupDetail.new(params[:age_group_detail])

    respond_to do |format|
      if @age_group_detail.save
        format.html { redirect_to @age_group_detail, :notice => 'Age group detail was successfully created.' }
        format.json { render :json => @age_group_detail, :status => :created, :location => @age_group_detail }
      else
        format.html { render :action => "new" }
        format.json { render :json => @age_group_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /age_group_details/1
  # PUT /age_group_details/1.json
  def update
    @age_group_detail = AgeGroupDetail.find(params[:id])

    respond_to do |format|
      if @age_group_detail.update_attributes(params[:age_group_detail])
        format.html { redirect_to @age_group_detail, :notice => 'Age group detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @age_group_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /age_group_details/1
  # DELETE /age_group_details/1.json
  def destroy
    @age_group_detail = AgeGroupDetail.find(params[:id])
    @age_group_detail.destroy

    respond_to do |format|
      format.html { redirect_to age_group_details_url }
      format.json { head :no_content }
    end
  end
end

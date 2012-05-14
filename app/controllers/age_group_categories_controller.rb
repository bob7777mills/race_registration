class AgeGroupCategoriesController < ApplicationController
  # GET /age_group_categories
  # GET /age_group_categories.json
  def index
    @age_group_categories = AgeGroupCategory.all
     respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @age_group_categories }
    end
  end

  # GET /age_group_categories/1
  # GET /age_group_categories/1.json
  def show
    @age_group_category = AgeGroupCategory.find(params[:id])
    @age_group_category.age_group_details.build    if @age_group_category.age_group_details.nil?


    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @age_group_category }
    end
  end

  # GET /age_group_categories/new
  # GET /age_group_categories/new.json
  def new
    @age_group_category = AgeGroupCategory.new
    @age_group_category.age_group_details.build    if @age_group_category.age_group_details.nil?

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @age_group_category }
    end
  end

  # GET /age_group_categories/1/edit
  def edit
    @age_group_category = AgeGroupCategory.find(params[:id])
    @age_group_category.age_group_details.build    if @age_group_category.age_group_details.nil?
  end

  # POST /age_group_categories
  # POST /age_group_categories.json
  def create
    @age_group_category = AgeGroupCategory.new(params[:age_group_category])
    @age_group_category.age_group_details.build    if @age_group_category.age_group_details.nil?

    respond_to do |format|
      if @age_group_category.save
        format.html { redirect_to @age_group_category, :notice => 'Age group category was successfully created.' }
        format.json { render :json => @age_group_category, :status => :created, :location => @age_group_category }
      else
        format.html { render :action => "new" }
        format.json { render :json => @age_group_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /age_group_categories/1
  # PUT /age_group_categories/1.json
  def update
    @age_group_category = AgeGroupCategory.find(params[:id])
    @age_group_category.age_group_details.build    if @age_group_category.age_group_details.nil?

    respond_to do |format|
      if @age_group_category.update_attributes(params[:age_group_category])
        format.html { redirect_to @age_group_category, :notice => 'Age group category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @age_group_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /age_group_categories/1
  # DELETE /age_group_categories/1.json
  def destroy
    @age_group_category = AgeGroupCategory.find(params[:id])
    @age_group_category.destroy

    respond_to do |format|
      format.html { redirect_to age_group_categories_url }
      format.json { head :no_content }
    end
  end
end

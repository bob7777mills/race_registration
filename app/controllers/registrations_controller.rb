class RegistrationsController < ApplicationController
  # GET /registrations
  # GET /registrations.json
  def index
    @registrations = Registration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @registrations }
    end
  end

  # GET /registrations/1
  # GET /registrations/1.json
  def show
    @registration = Registration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @registration }
    end
  end

  # GET /registrations/new
  # GET /registrations/new.json
  def new
    @registration = Registration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @registration }
    end
  end

  # GET /registrations/1/edit
  def edit
    @registration = Registration.find(params[:id])
  end

  # POST /registrations
  # POST /registrations.json
  def create
    @registration = Registration.new(params[:registration])
    @registration.registered_at=Time.now
    #raceid = :race_id
    raceid = 3
    thedate= Date.today
    #@pricing=Pricing.all( :conditions => [ "race_id = ? and ? between starts_on and ends_on", raceid, thedate] )
    @pricing=Pricing.all( :conditions => [ "race_id = 3 and '2012-05-27' between starts_on and ends_on"] )
    @registration.pricing_id = @pricing.id


    respond_to do |format|
      if @registration.save
        format.html { redirect_to @registration, :notice => 'Registration was successfully created.' }
        format.json { render :json => @registration, :status => :created, :location => @registration }
      else
        format.html { render :action => "new" }
        format.json { render :json => @registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /registrations/1
  # PUT /registrations/1.json
  def update
    @registration = Registration.find(params[:id])

    respond_to do |format|
      if @registration.update_attributes(params[:registration])
        format.html { redirect_to @registration, :notice => 'Registration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /registrations/1
  # DELETE /registrations/1.json
  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy

    respond_to do |format|
      format.html { redirect_to registrations_url }
      format.json { head :no_content }
    end
  end


  def register_step_1
    @registration = Registration.new
    #@registration.created_at = "2199-12-31 23:59:59"
    #@registration.updated_at = "2199-12-31 23:59:59"
    @registration.registered_at = "2199-12-31 23:59:59"
    #@registration.pricing_id = 3
    @event = Event.find(1)
    @races = @event.races
    #respond_to do |format|
    #format.html {redirect to register_step_1 }
    #format.json {head :no_content}
    #end


  end

 def register_step_2
   @race=Race.find(3)
 end

end

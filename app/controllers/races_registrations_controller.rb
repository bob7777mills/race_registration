class RacesRegistrationsController < ApplicationController
  # GET /races_registrations
  # GET /races_registrations.json
  def index
    @races_registrations = RacesRegistration.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @races_registrations }
    end
  end

  # GET /races_registrations/1
  # GET /races_registrations/1.json
  def show
    @races_registration = RacesRegistration.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @races_registration }
    end
  end

  # GET /races_registrations/new
  # GET /races_registrations/new.json
  def new
    @races_registration = RacesRegistration.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @races_registration }
    end
  end

  # GET /races_registrations/1/edit
  def edit
    @races_registration = RacesRegistration.find(params[:id])
  end

  # POST /races_registrations
  # POST /races_registrations.json
  def create
    @races_registration = RacesRegistration.new(params[:races_registration])

    respond_to do |format|
      if @races_registration.save
        format.html { redirect_to @races_registration, :notice => 'Races registration was successfully created.' }
        format.json { render :json => @races_registration, :status => :created, :location => @races_registration }
      else
        format.html { render :action => "new" }
        format.json { render :json => @races_registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /races_registrations/1
  # PUT /races_registrations/1.json
  def update
    @races_registration = RacesRegistration.find(params[:id])

    respond_to do |format|
      if @races_registration.update_attributes(params[:races_registration])
        format.html { redirect_to @races_registration, :notice => 'Races registration was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @races_registration.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /races_registrations/1
  # DELETE /races_registrations/1.json
  def destroy
    @races_registration = RacesRegistration.find(params[:id])
    @races_registration.destroy

    respond_to do |format|
      format.html { redirect_to races_registrations_url }
      format.json { head :no_content }
    end
  end
end

class HackathonsController < ApplicationController
  # GET /hackathons
  # GET /hackathons.xml
  def index
    @hackathons = Hackathon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hackathons }
    end
  end

  # GET /hackathons/1
  # GET /hackathons/1.xml
  def show
    @hackathon = Hackathon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hackathon }
    end
  end

  # GET /hackathons/new
  # GET /hackathons/new.xml
  def new
    @hackathon = Hackathon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hackathon }
    end
  end

  # GET /hackathons/1/edit
  def edit
    @hackathon = Hackathon.find(params[:id])
  end

  # POST /hackathons
  # POST /hackathons.xml
  def create
    @hackathon = Hackathon.new(params[:hackathon])

    respond_to do |format|
      if @hackathon.save
        format.html { redirect_to(@hackathon, :notice => 'Hackathon was successfully created.') }
        format.xml  { render :xml => @hackathon, :status => :created, :location => @hackathon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hackathon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hackathons/1
  # PUT /hackathons/1.xml
  def update
    @hackathon = Hackathon.find(params[:id])

    respond_to do |format|
      if @hackathon.update_attributes(params[:hackathon])
        format.html { redirect_to(@hackathon, :notice => 'Hackathon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hackathon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hackathons/1
  # DELETE /hackathons/1.xml
  def destroy
    @hackathon = Hackathon.find(params[:id])
    @hackathon.destroy

    respond_to do |format|
      format.html { redirect_to(hackathons_url) }
      format.xml  { head :ok }
    end
  end
end

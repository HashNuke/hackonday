class HackthaonsController < ApplicationController
  # GET /hackthaons
  # GET /hackthaons.xml
  def index
    @hackthaons = Hackthaon.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hackthaons }
    end
  end

  # GET /hackthaons/1
  # GET /hackthaons/1.xml
  def show
    @hackthaon = Hackthaon.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hackthaon }
    end
  end

  # GET /hackthaons/new
  # GET /hackthaons/new.xml
  def new
    @hackthaon = Hackthaon.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hackthaon }
    end
  end

  # GET /hackthaons/1/edit
  def edit
    @hackthaon = Hackthaon.find(params[:id])
  end

  # POST /hackthaons
  # POST /hackthaons.xml
  def create
    @hackthaon = Hackthaon.new(params[:hackthaon])

    respond_to do |format|
      if @hackthaon.save
        format.html { redirect_to(@hackthaon, :notice => 'Hackthaon was successfully created.') }
        format.xml  { render :xml => @hackthaon, :status => :created, :location => @hackthaon }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hackthaon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hackthaons/1
  # PUT /hackthaons/1.xml
  def update
    @hackthaon = Hackthaon.find(params[:id])

    respond_to do |format|
      if @hackthaon.update_attributes(params[:hackthaon])
        format.html { redirect_to(@hackthaon, :notice => 'Hackthaon was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hackthaon.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hackthaons/1
  # DELETE /hackthaons/1.xml
  def destroy
    @hackthaon = Hackthaon.find(params[:id])
    @hackthaon.destroy

    respond_to do |format|
      format.html { redirect_to(hackthaons_url) }
      format.xml  { head :ok }
    end
  end
end

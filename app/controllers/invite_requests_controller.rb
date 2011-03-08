class InviteRequestsController < ApplicationController

  before_filter :authenticate_user!, :except=>[:create]
  load_and_authorize_resource
  
  # GET /invite_requests
  # GET /invite_requests.xml
  def index
    @invite_requests = InviteRequest.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @invite_requests }
    end
  end

  # GET /invite_requests/1
  # GET /invite_requests/1.xml
  def show
    @invite_request = InviteRequest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @invite_request }
    end
  end

  # GET /invite_requests/new
  # GET /invite_requests/new.xml
  def new
    @invite_request = InviteRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @invite_request }
    end
  end

  # GET /invite_requests/1/edit
  def edit
    @invite_request = InviteRequest.find(params[:id])
  end

  # POST /invite_requests
  # POST /invite_requests.xmly
  def create
    @invite_request = InviteRequest.new(params[:invite_request])

    respond_to do |format|
      if @invite_request.save
        format.html do
          if request.xhr?
            render :json => "success"
          else
            redirect_to(root_url, :notice => 'Invite request was successfully created.')
          end
        end
      else
        format.html do
          if request.xhr?
            render :json => @invite_request.errors, :status => :unprocessable_entity
          else
            render :action => "new"
          end
        end
      end
    end
  end

  # PUT /invite_requests/1
  # PUT /invite_requests/1.xml
  def update
    @invite_request = InviteRequest.find(params[:id])

    respond_to do |format|
      if @invite_request.update_attributes(params[:invite_request])
        format.html { redirect_to(@invite_request, :notice => 'Invite request was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @invite_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /invite_requests/1
  # DELETE /invite_requests/1.xml
  def destroy
    @invite_request = InviteRequest.find(params[:id])
    @invite_request.destroy

    respond_to do |format|
      format.html { redirect_to(invite_requests_url) }
      format.xml  { head :ok }
    end
  end
end

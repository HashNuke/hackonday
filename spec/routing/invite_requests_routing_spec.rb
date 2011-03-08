require "spec_helper"

describe InviteRequestsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/invite_requests" }.should route_to(:controller => "invite_requests", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/invite_requests/new" }.should route_to(:controller => "invite_requests", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/invite_requests/1" }.should route_to(:controller => "invite_requests", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/invite_requests/1/edit" }.should route_to(:controller => "invite_requests", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/invite_requests" }.should route_to(:controller => "invite_requests", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/invite_requests/1" }.should route_to(:controller => "invite_requests", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/invite_requests/1" }.should route_to(:controller => "invite_requests", :action => "destroy", :id => "1")
    end

  end
end

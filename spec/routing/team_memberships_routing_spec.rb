require "spec_helper"

describe TeamMembershipsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/team_memberships" }.should route_to(:controller => "team_memberships", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/team_memberships/new" }.should route_to(:controller => "team_memberships", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/team_memberships/1" }.should route_to(:controller => "team_memberships", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/team_memberships/1/edit" }.should route_to(:controller => "team_memberships", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/team_memberships" }.should route_to(:controller => "team_memberships", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/team_memberships/1" }.should route_to(:controller => "team_memberships", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/team_memberships/1" }.should route_to(:controller => "team_memberships", :action => "destroy", :id => "1")
    end

  end
end

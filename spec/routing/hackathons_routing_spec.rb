require "spec_helper"

describe HackathonsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/hackathons" }.should route_to(:controller => "hackathons", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/hackathons/new" }.should route_to(:controller => "hackathons", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/hackathons/1" }.should route_to(:controller => "hackathons", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/hackathons/1/edit" }.should route_to(:controller => "hackathons", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/hackathons" }.should route_to(:controller => "hackathons", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/hackathons/1" }.should route_to(:controller => "hackathons", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/hackathons/1" }.should route_to(:controller => "hackathons", :action => "destroy", :id => "1")
    end

  end
end

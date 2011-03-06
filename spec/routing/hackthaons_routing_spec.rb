require "spec_helper"

describe HackthaonsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/hackthaons" }.should route_to(:controller => "hackthaons", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/hackthaons/new" }.should route_to(:controller => "hackthaons", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/hackthaons/1" }.should route_to(:controller => "hackthaons", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/hackthaons/1/edit" }.should route_to(:controller => "hackthaons", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/hackthaons" }.should route_to(:controller => "hackthaons", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/hackthaons/1" }.should route_to(:controller => "hackthaons", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/hackthaons/1" }.should route_to(:controller => "hackthaons", :action => "destroy", :id => "1")
    end

  end
end

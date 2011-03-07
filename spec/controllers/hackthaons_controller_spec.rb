require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by the Rails when you ran the scaffold generator.

describe HackthaonsController do

  def mock_hackthaon(stubs={})
    @mock_hackthaon ||= mock_model(Hackthaon, stubs).as_null_object
  end

  describe "GET index" do
    it "assigns all hackthaons as @hackthaons" do
      Hackthaon.stub(:all) { [mock_hackthaon] }
      get :index
      assigns(:hackthaons).should eq([mock_hackthaon])
    end
  end

  describe "GET show" do
    it "assigns the requested hackthaon as @hackthaon" do
      Hackthaon.stub(:find).with("37") { mock_hackthaon }
      get :show, :id => "37"
      assigns(:hackthaon).should be(mock_hackthaon)
    end
  end

  describe "GET new" do
    it "assigns a new hackthaon as @hackthaon" do
      Hackthaon.stub(:new) { mock_hackthaon }
      get :new
      assigns(:hackthaon).should be(mock_hackthaon)
    end
  end

  describe "GET edit" do
    it "assigns the requested hackthaon as @hackthaon" do
      Hackthaon.stub(:find).with("37") { mock_hackthaon }
      get :edit, :id => "37"
      assigns(:hackthaon).should be(mock_hackthaon)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "assigns a newly created hackthaon as @hackthaon" do
        Hackthaon.stub(:new).with({'these' => 'params'}) { mock_hackthaon(:save => true) }
        post :create, :hackthaon => {'these' => 'params'}
        assigns(:hackthaon).should be(mock_hackthaon)
      end

      it "redirects to the created hackthaon" do
        Hackthaon.stub(:new) { mock_hackthaon(:save => true) }
        post :create, :hackthaon => {}
        response.should redirect_to(hackthaon_url(mock_hackthaon))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved hackthaon as @hackthaon" do
        Hackthaon.stub(:new).with({'these' => 'params'}) { mock_hackthaon(:save => false) }
        post :create, :hackthaon => {'these' => 'params'}
        assigns(:hackthaon).should be(mock_hackthaon)
      end

      it "re-renders the 'new' template" do
        Hackthaon.stub(:new) { mock_hackthaon(:save => false) }
        post :create, :hackthaon => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested hackthaon" do
        Hackthaon.stub(:find).with("37") { mock_hackthaon }
        mock_hackthaon.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :hackthaon => {'these' => 'params'}
      end

      it "assigns the requested hackthaon as @hackthaon" do
        Hackthaon.stub(:find) { mock_hackthaon(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:hackthaon).should be(mock_hackthaon)
      end

      it "redirects to the hackthaon" do
        Hackthaon.stub(:find) { mock_hackthaon(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(hackthaon_url(mock_hackthaon))
      end
    end

    describe "with invalid params" do
      it "assigns the hackthaon as @hackthaon" do
        Hackthaon.stub(:find) { mock_hackthaon(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:hackthaon).should be(mock_hackthaon)
      end

      it "re-renders the 'edit' template" do
        Hackthaon.stub(:find) { mock_hackthaon(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested hackthaon" do
      Hackthaon.stub(:find).with("37") { mock_hackthaon }
      mock_hackthaon.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the hackthaons list" do
      Hackthaon.stub(:find) { mock_hackthaon }
      delete :destroy, :id => "1"
      response.should redirect_to(hackthaons_url)
    end
  end

end
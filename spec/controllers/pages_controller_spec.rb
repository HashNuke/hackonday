require 'spec_helper'

describe PagesController do

  describe "GET 'rules'" do
    it "should be successful" do
      get 'rules'
      response.should be_success
    end
  end

  describe "GET 'privacy'" do
    it "should be successful" do
      get 'privacy'
      response.should be_success
    end
  end

end

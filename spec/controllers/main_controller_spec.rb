require 'spec_helper'

describe MainController do

  describe "GET 'landing'" do
    it "should be successful" do
      get 'landing'
      response.should be_success
    end
  end

end

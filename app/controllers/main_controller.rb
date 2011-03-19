class MainController < ApplicationController
  
  before_filter :current_user, :only =>[:home]
  load_and_authorize_resource
  
  def landing
    @invite_request = InviteRequest.new
    render :layout=>'landing'
  end

  def uc
    render :text=>InviteRequest.count
  end

  def home
    
  end
  
end

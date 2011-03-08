class MainController < ApplicationController
  def landing
    @invite_request = InviteRequest.new
    render :layout=>'landing'
  end

  def uc
    render :text=>InviteRequest.count
  end
  
end

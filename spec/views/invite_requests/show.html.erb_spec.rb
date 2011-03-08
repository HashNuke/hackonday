require 'spec_helper'

describe "invite_requests/show.html.erb" do
  before(:each) do
    @invite_request = assign(:invite_request, stub_model(InviteRequest,
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Email/)
  end
end

require 'spec_helper'

describe "invite_requests/index.html.erb" do
  before(:each) do
    assign(:invite_requests, [
      stub_model(InviteRequest,
        :email => "Email"
      ),
      stub_model(InviteRequest,
        :email => "Email"
      )
    ])
  end

  it "renders a list of invite_requests" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end

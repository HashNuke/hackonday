require 'spec_helper'

describe "team_memberships/index.html.erb" do
  before(:each) do
    assign(:team_memberships, [
      stub_model(TeamMembership,
        :team_id => 1,
        :user_id => 1
      ),
      stub_model(TeamMembership,
        :team_id => 1,
        :user_id => 1
      )
    ])
  end

  it "renders a list of team_memberships" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

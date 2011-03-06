require 'spec_helper'

describe "team_memberships/edit.html.erb" do
  before(:each) do
    @team_membership = assign(:team_membership, stub_model(TeamMembership,
      :team_id => 1,
      :user_id => 1
    ))
  end

  it "renders the edit team_membership form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => team_memberships_path(@team_membership), :method => "post" do
      assert_select "input#team_membership_team_id", :name => "team_membership[team_id]"
      assert_select "input#team_membership_user_id", :name => "team_membership[user_id]"
    end
  end
end

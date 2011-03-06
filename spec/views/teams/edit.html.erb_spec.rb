require 'spec_helper'

describe "teams/edit.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :name => "MyString",
      :description => "MyString",
      :hackathon_id => 1
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => teams_path(@team), :method => "post" do
      assert_select "input#team_name", :name => "team[name]"
      assert_select "input#team_description", :name => "team[description]"
      assert_select "input#team_hackathon_id", :name => "team[hackathon_id]"
    end
  end
end

require 'spec_helper'

describe "teams/show.html.erb" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :name => "Name",
      :description => "Description",
      :hackathon_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

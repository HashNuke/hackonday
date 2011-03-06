require 'spec_helper'

describe "hackthaons/index.html.erb" do
  before(:each) do
    assign(:hackthaons, [
      stub_model(Hackthaon,
        :name => "Name"
      ),
      stub_model(Hackthaon,
        :name => "Name"
      )
    ])
  end

  it "renders a list of hackthaons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end

require 'spec_helper'

describe "hackathons/edit.html.erb" do
  before(:each) do
    @hackathon = assign(:hackathon, stub_model(Hackathon,
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit hackathon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hackathons_path(@hackathon), :method => "post" do
      assert_select "input#hackathon_name", :name => "hackathon[name]"
      assert_select "input#hackathon_description", :name => "hackathon[description]"
    end
  end
end

require 'spec_helper'

describe "hackathons/new.html.erb" do
  before(:each) do
    assign(:hackathon, stub_model(Hackathon,
      :name => "MyString",
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new hackathon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hackathons_path, :method => "post" do
      assert_select "input#hackathon_name", :name => "hackathon[name]"
      assert_select "input#hackathon_description", :name => "hackathon[description]"
    end
  end
end

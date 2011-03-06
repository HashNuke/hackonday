require 'spec_helper'

describe "hackthaons/new.html.erb" do
  before(:each) do
    assign(:hackthaon, stub_model(Hackthaon,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new hackthaon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hackthaons_path, :method => "post" do
      assert_select "input#hackthaon_name", :name => "hackthaon[name]"
    end
  end
end

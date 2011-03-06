require 'spec_helper'

describe "hackthaons/edit.html.erb" do
  before(:each) do
    @hackthaon = assign(:hackthaon, stub_model(Hackthaon,
      :name => "MyString"
    ))
  end

  it "renders the edit hackthaon form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => hackthaons_path(@hackthaon), :method => "post" do
      assert_select "input#hackthaon_name", :name => "hackthaon[name]"
    end
  end
end

require 'spec_helper'

describe "ministries/new" do
  before(:each) do
    assign(:ministry, stub_model(Ministry,
      :ministry_name => "MyString",
      :leader_name => "MyString",
      :phone => "MyString",
      :descripion_ministry => "MyText"
    ).as_new_record)
  end

  it "renders new ministry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", ministries_path, "post" do
      assert_select "input#ministry_ministry_name[name=?]", "ministry[ministry_name]"
      assert_select "input#ministry_leader_name[name=?]", "ministry[leader_name]"
      assert_select "input#ministry_phone[name=?]", "ministry[phone]"
      assert_select "textarea#ministry_descripion_ministry[name=?]", "ministry[descripion_ministry]"
    end
  end
end

require 'spec_helper'

describe "ministries/index" do
  before(:each) do
    assign(:ministries, [
      stub_model(Ministry,
        :ministry_name => "Ministry_name",
        :leader_name => "Leader_name",
        :phone => "Phone",
        :descripion_ministry => "MyText"
      ),
      stub_model(Ministry,
        :ministry_name => "Ministry_name",
        :leader_name => "Leader_name",
        :phone => "Phone",
        :descripion_ministry => "MyText"
      )
    ])
  end

  it "renders a list of ministries" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Ministry_name".to_s, :count => 2
    assert_select "tr>td", :text => "Leader_name".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

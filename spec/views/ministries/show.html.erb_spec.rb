require 'spec_helper'

describe "ministries/show" do
  before(:each) do
    @ministry = assign(:ministry, stub_model(Ministry,
      :ministry_name => "Ministry_name",
      :leader_name => "Leader_name",
      :phone => "Phone",
      :descripion_ministry => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Ministry_name/)
    rendered.should match(/Leader_name/)
    rendered.should match(/Phone/)
    rendered.should match(/MyText/)
  end
end

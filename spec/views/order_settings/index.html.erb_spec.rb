require 'spec_helper'

describe "order_settings/index" do
  before(:each) do
    assign(:order_settings, [
      stub_model(OrderSetting,
        :default_rate => 1
      ),
      stub_model(OrderSetting,
        :default_rate => 1
      )
    ])
  end

  it "renders a list of order_settings" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

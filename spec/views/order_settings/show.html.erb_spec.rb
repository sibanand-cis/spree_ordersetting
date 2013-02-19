require 'spec_helper'

describe "order_settings/show" do
  before(:each) do
    @order_setting = assign(:order_setting, stub_model(OrderSetting,
      :default_rate => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end

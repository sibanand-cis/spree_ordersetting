require 'spec_helper'

describe "order_settings/edit" do
  before(:each) do
    @order_setting = assign(:order_setting, stub_model(OrderSetting,
      :default_rate => 1
    ))
  end

  it "renders the edit order_setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => order_settings_path(@order_setting), :method => "post" do
      assert_select "input#order_setting_default_rate", :name => "order_setting[default_rate]"
    end
  end
end

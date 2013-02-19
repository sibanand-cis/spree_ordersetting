require 'spec_helper'

describe "order_settings/new" do
  before(:each) do
    assign(:order_setting, stub_model(OrderSetting,
      :default_rate => 1
    ).as_new_record)
  end

  it "renders new order_setting form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => order_settings_path, :method => "post" do
      assert_select "input#order_setting_default_rate", :name => "order_setting[default_rate]"
    end
  end
end

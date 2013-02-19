class Spree::Admin::OrderSettingsController < Spree::Admin::BaseController

  def new
    @order_setting = OrderSetting.new
  end  

 def create
  begin
    if OrderSetting.first.nil?
      @order_setting = OrderSetting.new(params[:order_setting]) 
      @order_setting.save
    else
      @first = OrderSetting.first
      @order_setting =@first.update_attributes(params[:order_setting])
    end
      redirect_to edit_admin_general_settings_path
  rescue 
      render action: "new"  
  end
 end  


end
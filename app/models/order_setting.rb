class OrderSetting < ActiveRecord::Base
  attr_accessible  :minimum_booking_period,:maximum_space,:parking_permit
 

  def self.setting
  	self.first
  end	

  def self.minimum_booking_period
  	self.setting.minimum_booking_period
  end	
end

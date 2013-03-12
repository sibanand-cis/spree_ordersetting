class OrderSetting < ActiveRecord::Base
  attr_accessible :default_rate,:minimum_booking_period,:maximum_space,:parking_permit
  validates :default_rate, :presence => true

  def self.setting
  		self.first
  end	
  def self.minimum_booking_period
  		self.setting.minimum_booking_period
  end	
end

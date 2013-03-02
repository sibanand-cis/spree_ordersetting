class OrderSetting < ActiveRecord::Base
  attr_accessible :default_rate,:minimum_booking_period
  validates :default_rate, :presence => true
end

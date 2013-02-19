class OrderSetting < ActiveRecord::Base
  attr_accessible :default_rate
  validates :default_rate, :presence => true
end

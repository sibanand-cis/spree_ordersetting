class AddMinimumBookingPeriodToOrderSettings < ActiveRecord::Migration
  def change
  	add_column :order_settings,:minimum_booking_period,:integer
  end
end

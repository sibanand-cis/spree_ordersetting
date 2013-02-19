class CreateOrderSettings < ActiveRecord::Migration
  def change
    create_table :order_settings do |t|
      t.integer :default_rate

      t.timestamps
    end
  end
end

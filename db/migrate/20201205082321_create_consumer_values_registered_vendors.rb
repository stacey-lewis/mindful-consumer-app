class CreateConsumerValuesRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :consumer_values_registered_vendors do |t|
      t.integer :consumer_value_id
      t.integer :registered_vendor_id
    end
  end
end

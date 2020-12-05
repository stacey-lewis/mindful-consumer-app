class CreateRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :registered_vendors do |t|
      t.text :vendor_name
      t.integer :phone_number
      t.text :address
      t.text :suburb
      t.text :state
      t.integer :postcode
      t.text :website
      t.text :logo
      t.text :background_image
      t.text :hero_image
      t.text :opening_hours
      t.text :bio

      t.timestamps
    end
  end
end

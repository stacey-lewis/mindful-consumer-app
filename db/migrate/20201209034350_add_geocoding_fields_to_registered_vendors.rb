class AddGeocodingFieldsToRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_vendors, :latitude, :float
    add_column :registered_vendors, :longitude, :float
  end
end

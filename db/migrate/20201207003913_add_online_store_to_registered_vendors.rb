class AddOnlineStoreToRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_vendors, :online_store, :boolean
  end
end

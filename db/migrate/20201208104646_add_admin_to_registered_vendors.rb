class AddAdminToRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_vendors, :admin, :boolean
  end
end

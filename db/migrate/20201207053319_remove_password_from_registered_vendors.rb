class RemovePasswordFromRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    remove_column :registered_vendors, :password
  end
end

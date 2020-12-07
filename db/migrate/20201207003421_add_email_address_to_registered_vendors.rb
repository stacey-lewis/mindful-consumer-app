class AddEmailAddressToRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_vendors, :email_address, :string
  end
end

class AddPasswordToRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_vendors, :password, :string
  end
end

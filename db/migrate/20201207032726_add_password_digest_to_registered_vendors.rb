class AddPasswordDigestToRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_vendors, :password_digest, :string
  end
end

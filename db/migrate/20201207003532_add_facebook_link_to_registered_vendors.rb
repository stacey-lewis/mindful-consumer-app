class AddFacebookLinkToRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_vendors, :facebook, :string
  end
end

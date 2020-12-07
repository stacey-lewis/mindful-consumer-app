class AddInstagramLinkToRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_vendors, :instagram, :string
  end
end

class CreateConsumerCategoriesRegisteredVendors < ActiveRecord::Migration[5.2]
  def change
    create_table :consumer_categories_registered_vendors do |t|
      t.integer :consumer_category_id
      t.integer :registered_vendor_id
    end
  end
end

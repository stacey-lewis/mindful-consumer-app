class CreateConsumerCategoriesRegisteredUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :consumer_categories_registered_users do |t|
      t.integer :consumer_category_id
      t.integer :registered_user_id
    end
  end
end

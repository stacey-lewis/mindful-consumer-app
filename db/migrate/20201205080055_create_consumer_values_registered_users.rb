class CreateConsumerValuesRegisteredUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :consumer_values_registered_users do |t|
      t.integer :consumer_value_id
      t.integer :registered_user_id
    end
  end
end

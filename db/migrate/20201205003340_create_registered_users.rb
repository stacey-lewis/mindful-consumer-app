class CreateRegisteredUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :registered_users do |t|
      t.text :name
      t.text :email
      t.text :suburb
      t.integer :phone_number
      t.boolean :opt_in_for_emails
      t.integer :postcode
      t.text :state

      t.timestamps
    end
  end
end

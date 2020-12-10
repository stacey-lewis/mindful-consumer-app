class AddPasswordToRegisteredUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :registered_users, :password_digest, :string
  end
end

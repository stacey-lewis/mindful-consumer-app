class RegisteredUser < ApplicationRecord

  has_secure_password

  has_and_belongs_to_many :consumer_values
  has_and_belongs_to_many :consumer_categories

end

class RegisteredVendor < ApplicationRecord

  has_and_belongs_to_many :consumer_values
  has_and_belongs_to_many :consumer_categories

  has_secure_password
  validates :email_address, :presence => true, :uniqueness => true

end

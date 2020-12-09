class RegisteredVendor < ApplicationRecord

  has_and_belongs_to_many :consumer_values
  has_and_belongs_to_many :consumer_categories

  has_secure_password

  validates :email_address, :presence => true, :uniqueness => true

  #geocoding
  after_validation :geocode
  #...if your address is broken into seperate columns:

  def full_address
    "#{address}, #{suburb}, #{state}, #{postcode}"
  end
  
  geocoded_by :full_address


  #One column address option:
  # geocoded_by :address
end

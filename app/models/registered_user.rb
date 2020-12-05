class RegisteredUser < ApplicationRecord

  has_and_belongs_to_many :consumer_values
  has_and_belongs_to_many :consumer_categories

end

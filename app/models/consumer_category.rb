class ConsumerCategory < ApplicationRecord

  has_and_belongs_to_many :registered_users
  has_and_belongs_to_many :registered_vendors

end

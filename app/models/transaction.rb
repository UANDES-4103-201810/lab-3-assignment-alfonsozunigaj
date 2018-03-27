class Transaction < ApplicationRecord
  has_one :user
  has_one :ticket
end

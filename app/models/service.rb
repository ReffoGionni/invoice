class Service < ApplicationRecord
  belongs_to :user
  belongs_to :invoice
  belongs_to :customer
end

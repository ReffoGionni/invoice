class User < ApplicationRecord
  has_many :customer
  has_many :invoice
  has_many :service
  has_many :issue
  has_many :customer, through: :issue
end

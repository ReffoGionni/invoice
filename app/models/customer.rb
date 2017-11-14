class Customer < ApplicationRecord
  has_many :service, dependent: :destroy
  has_many :invoice, dependent: :destroy
  has_many :issue
  has_many :user, through: :issue
end

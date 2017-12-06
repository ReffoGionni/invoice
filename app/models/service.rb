class Service < ApplicationRecord
  #belongs_to :user
  #belongs_to :invoice
  belongs_to :customer, class_name: 'Customer' , primary_key: 'cf', foreign_key: 'cf'
  validates :cf, presence: true
  validates :rate, presence: true
  validates :duration, presence: true
end

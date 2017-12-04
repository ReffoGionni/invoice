class Issue < ApplicationRecord
  #belongs_to :user
  belongs_to :customer, class_name: 'Customer' , primary_key: 'cf', foreign_key: 'cf'
  validates :cf, presence: true
end

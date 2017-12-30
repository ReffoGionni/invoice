class Invoice < ApplicationRecord
  belongs_to :customer, class_name: 'Customer' , primary_key: 'cf', foreign_key: 'cf'
  validates :cf, :invoiceNumber, :totDuration, :totalDue, presence: true
  has_many :service
  #, dependent: :destroy
end

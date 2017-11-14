class Invoice < ApplicationRecord
  belongs_to :customer
  has_many :service, dependent: :destroy
end

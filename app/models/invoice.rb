class Invoice < ApplicationRecord
  belongs_to :customer, class_name: 'Customer' , primary_key: 'cf', foreign_key: 'cf'
  validates :cf, presence: true
  has_many :service, dependent: :destroy
end
def hasMinData?
  !(cf.nil?) && !(invoiceNumber.nil?) && !(totDuration.nil?) && !(payDate.nil?) && !(totalDue.nil?)
end

# Semplice verifica di validità del codice fiscale
# Accettato solo numerico lungo 11 o alfanumerico lungo 16
def hasValidCf?
  return true if (cf.length == 11) && (cf[/[0-9]+/] == cf)
  return true if cf =~ /[A-Z]{6}[0-9]{2}[A-Z][0-9]{2}[A-Z][0-9]{3}[A-Z]/
  false
end

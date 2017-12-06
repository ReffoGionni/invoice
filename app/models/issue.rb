class Issue < ApplicationRecord
  #belongs_to :user
  belongs_to :customer, class_name: 'Customer' , primary_key: 'cf', foreign_key: 'cf'
  validates :cf, presence: true
end
#cf, name, address, postcode, city, prov
def hasMinData?
  !(cf.nil?) && !(description.nil?)
end

# Semplice verifica di validità del codice fiscale
# Accettato solo numerico lungo 11 o alfanumerico lungo 16
def hasValidCf?
  return true if (cf.length == 11) && (cf[/[0-9]+/] == cf)
  return true if cf =~ /[A-Z]{6}[0-9]{2}[A-Z][0-9]{2}[A-Z][0-9]{3}[A-Z]/
  false
end

def valid? (context=nil)
    context ||= (new_record? ? :create : :update)
    output = super(context)

    errors.add(:cf, "must be valid") unless hasValidCf?
    errors.add(:description, "must have two or more chars") unless description.length >= 2
    errors.empty? && output
end

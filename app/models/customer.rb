class Customer < ApplicationRecord
  has_many :service, dependent: :destroy
  has_many :invoice, dependent: :destroy
  has_many :issue
  has_many :user, through: :issue
  

  #cf, name, address, postcode, city, prov
  def hasMinData?
    !(cf.nil?) && !(name.nil?) && !(address.nil?) && !(postcode.nil?) && !(city.nil?) && !(prov.nil?)
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
      errors.add(:surname, "must have two or more chars") unless surname.length >= 2
      errors.add(:name, "must have two or more chars") unless name.length >= 2
      errors.add(:address, "must have two or more chars") unless address.length >= 2
      errors.add(:postcode, "must exist") if postcode.nil?
      errors.add(:city, "must have two or more chars") unless city.length >= 2
      errors.add(:prov, "must have two chars") unless prov.length == 2
      
      errors.empty? && output
  end
  
end

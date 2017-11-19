require_relative 'application_record.rb'

class User < ApplicationRecord
  has_many :customer
  has_many :invoice
  has_many :service
  has_many :issue
  has_many :customer, through: :issue
  
  # an User has a valid name if has two or more chars and the first is a letter
  def hasValidNameLength?
    name.length >= 2
  end

  def isFirstCharOfNameALetter?
    # con le regular expression mi ricavo dal primo carattere del nome la presenza nel set di sole lettere maiuscome e minuscole
    # se nil allora OK, altrimenti KO
    !(name.empty?) && !(name[0][/[a-zA-Z]+/].nil?)
  end

  def hasValidName?
    hasValidNameLength? && isFirstCharOfNameALetter?
  end
  
  # an User has a valid role if is one of TEC,COM,IT,DIR,CTB
  def hasValidRole?
    ["TEC","COM","IT","DIR","CTB"].include? role 
  end
  
  def valid? (context=nil)
      context ||= (new_record? ? :create : :update)
      output = super(context)

      errors.add(:name, "must has two or more chars") unless hasValidNameLength?
      errors.add(:name, "must has a letter for first char") unless isFirstCharOfNameALetter?
      errors.add(:role, "not valid") unless hasValidRole?
      
      errors.empty? && output
  end
  
end

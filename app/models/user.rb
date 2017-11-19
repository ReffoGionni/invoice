require_relative 'application_record.rb'

class User < ApplicationRecord
  has_many :customer
  has_many :invoice
  has_many :service
  has_many :issue
  has_many :customer, through: :issue
  
  def hasValidName?
    name.length >= 2
  end
  
  def hasValidRole?
    ["TEC","COM","IT","DIR","CTB"].include? role 
  end
  
end

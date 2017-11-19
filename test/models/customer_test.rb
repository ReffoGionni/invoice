require_relative '../test_helper'

class CustomerTest < ActiveSupport::TestCase

  describe "Customer - scenario: Inserting a new customer that" do

    it "has a cf, name, address, postcode, city, prov" do
      @customer = Customer.new(:cf => "aaa", :name => "Gionni", :surname => "Reffo", :address => "Via Sommarive, 5", :postcode => 38123, :city => "Povo", :prov => "TN")
      expect(@customer.hasMinData?).to be true
    end

    it "has a valid alphanumeric cf" do
      @customer = Customer.new(:cf => "ABCDEF12G34H567I")
      expect(@customer.hasValidCf?).to be true
    end

    it "has a invalid cf 16" do
      @customer = Customer.new(:cf => "ABCDEF12G34H5678")
      expect(@customer.hasValidCf?).to be false
    end

    it "has a valid numeric cf" do
      @customer = Customer.new(:cf => "12345678901")
      expect(@customer.hasValidCf?).to be true
    end

    it "has a invalid cf 11" do
      @customer = Customer.new(:cf => "1234567890A")
      expect(@customer.hasValidCf?).to be false
    end
  end

end

require_relative '../test_helper'

class UserTest < ActiveSupport::TestCase

  describe "user" do

    it "has a valid name" do
      @user = User.new(:name => "Anna", :role => "TEC")
      expect(@user.hasValidName?).to be true
    end

    it "not has a valid name" do
      @user = User.new(:name => "G", :role => "TEC")
      expect(@user.hasValidName?).to be false
    end

    it "has a valid role" do
      @user = User.new(:name => "Anna", :role => "TEC")
      expect(@user.hasValidRole?).to be true
    end

    it "not has a valid role" do
      @user = User.new(:name => "Gionni", :role => "X")
      expect(@user.hasValidRole?).to be false
    end

  end

end

require_relative '../test_helper'

class UserTest < ActiveSupport::TestCase

  describe "user" do
    it "has a valid name" do
      @user = User.new(:name => "Anna", :role => "TEC")
      expect(@user.hasValidName?).to be true
    end
  end

end

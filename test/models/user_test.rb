require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(username: "Halli", encrypted_password: "asdfw2fasdf")
  end

  test "should be valid" do
    assert @user.valid?
  end
end
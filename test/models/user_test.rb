require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:valid)
  end

  test 'should be valid' do
    assert @user.valid?
  end

  test 'invalid without name' do
    @user.username = nil
    refute @user.valid?, 'saved user without a name'
    assert_not_nil @user.errors[:username], 'no validation error for name present'

  end

  test 'invalid password' do
    user = User.new(username: 'Halliga', password_digest: 'foobar', password_confirmation: 'foobar3')
    assert user.password_digest = true
  end

end

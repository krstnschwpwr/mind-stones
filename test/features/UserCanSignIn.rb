require "test_helper"

class UsercanSignIn < ActionDispatch::IntegrationTest
  include ActiveJob::TestHelper
describe “the signin process”, :type => :feature do
  before :each do
    User.make(username: 'heidilein', password_digest: ‘password’)
  end
  it “signs me in” do
    visit ‘/signup’
    within(“#session”) do
    fill_in 'Username', with: ‘heidilein’
    fill_in 'Password_Digest', with: ‘password’
  end
  click_button ‘Sign in’
  expect(page).to have_content ‘Success’
end
end

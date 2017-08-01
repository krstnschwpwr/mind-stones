require 'test_helper'

class MyDaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_day = my_days(:one)
  end

  test "should get index" do
    get my_days_url
    assert_response :success
  end

  test "should get new" do
    get new_my_day_url
    assert_response :success
  end

  test "should create my_day" do
    assert_difference('MyDay.count') do
      post my_days_url, params: { my_day: {  } }
    end

    assert_redirected_to my_day_url(MyDay.last)
  end

  test "should show my_day" do
    get my_day_url(@my_day)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_day_url(@my_day)
    assert_response :success
  end

  test "should update my_day" do
    patch my_day_url(@my_day), params: { my_day: {  } }
    assert_redirected_to my_day_url(@my_day)
  end

  test "should destroy my_day" do
    assert_difference('MyDay.count', -1) do
      delete my_day_url(@my_day)
    end

    assert_redirected_to my_days_url
  end
end

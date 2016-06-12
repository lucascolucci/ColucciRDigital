require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get main_home_url
    assert_response :success
  end

  test "should get price" do
    get main_price_url
    assert_response :success
  end

  test "should get contact" do
    get main_contact_url
    assert_response :success
  end

  test "should get about" do
    get main_about_url
    assert_response :success
  end

  test "should get profile" do
    get main_profile_url
    assert_response :success
  end

end

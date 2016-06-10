require 'test_helper'

class ApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get application_home_url
    assert_response :success
  end

  test "should get price" do
    get application_price_url
    assert_response :success
  end

  test "should get contact" do
    get application_contact_url
    assert_response :success
  end

  test "should get product" do
    get application_product_url
    assert_response :success
  end

end

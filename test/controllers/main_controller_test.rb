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

  test "should get product" do
    get main_product_url
    assert_response :success
  end

end

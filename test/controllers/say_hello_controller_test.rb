require 'test_helper'

class SayHelloControllerTest < ActionDispatch::IntegrationTest
  test "should get say" do
    get say_hello_say_url
    assert_response :success
  end

end

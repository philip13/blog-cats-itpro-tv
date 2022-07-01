require 'test_helper'

class PublicControllerTest < ActionDispatch::IntegrationTest
  test "should get about_us" do
    get public_about_us_url
    assert_response :success
  end

end

require "test_helper"

class HeliumControllerTest < ActionDispatch::IntegrationTest
  test "should get carousel" do
    get helium_carousel_url
    assert_response :success
  end
end

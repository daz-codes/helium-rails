require "test_helper"

class StimulusControllerTest < ActionDispatch::IntegrationTest
  test "should get carousel" do
    get stimulus_carousel_url
    assert_response :success
  end
end

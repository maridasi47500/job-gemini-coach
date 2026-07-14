require "test_helper"

class GeminiLiveControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gemini_live_index_url
    assert_response :success
  end
end

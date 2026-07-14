require "test_helper"

class CanvasGeminiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get canvas_gemini_index_url
    assert_response :success
  end
end

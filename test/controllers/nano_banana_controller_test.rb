require "test_helper"

class NanoBananaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get nano_banana_index_url
    assert_response :success
  end
end

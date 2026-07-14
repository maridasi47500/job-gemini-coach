require "test_helper"

class MotCleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mot_cle_index_url
    assert_response :success
  end
end

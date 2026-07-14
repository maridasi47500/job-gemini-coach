require "test_helper"

class MoiVousNousControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get moi_vous_nous_index_url
    assert_response :success
  end
end

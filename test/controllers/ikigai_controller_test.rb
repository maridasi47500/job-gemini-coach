require "test_helper"

class IkigaiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ikigai_index_url
    assert_response :success
  end
end

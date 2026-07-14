require "test_helper"

class PresentezVousControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get presentez_vous_index_url
    assert_response :success
  end
end

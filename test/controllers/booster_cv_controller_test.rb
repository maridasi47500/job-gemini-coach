require "test_helper"

class BoosterCvControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get booster_cv_index_url
    assert_response :success
  end
end

require "test_helper"

class DeepResearchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get deep_research_index_url
    assert_response :success
  end
end

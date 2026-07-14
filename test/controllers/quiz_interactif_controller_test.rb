require "test_helper"

class QuizInteractifControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quiz_interactif_index_url
    assert_response :success
  end
end

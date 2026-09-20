require "test_helper"

class EntretienControllerTest < ActionDispatch::IntegrationTest
  test "should get questions" do
    get entretien_questions_url
    assert_response :success
  end
end

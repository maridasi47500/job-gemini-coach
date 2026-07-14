require "test_helper"

class LinkedinResumeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get linkedin_resume_index_url
    assert_response :success
  end
end

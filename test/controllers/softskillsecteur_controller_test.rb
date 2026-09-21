require "test_helper"

class SoftskillsecteurControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get softskillsecteur_hello_url
    assert_response :success
  end
end

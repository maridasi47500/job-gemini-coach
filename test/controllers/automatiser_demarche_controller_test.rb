require "test_helper"

class AutomatiserDemarcheControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get automatiser_demarche_index_url
    assert_response :success
  end
end

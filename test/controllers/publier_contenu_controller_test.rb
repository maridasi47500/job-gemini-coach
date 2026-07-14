require "test_helper"

class PublierContenuControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get publier_contenu_index_url
    assert_response :success
  end
end

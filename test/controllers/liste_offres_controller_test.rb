require "test_helper"

class ListeOffresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get liste_offres_index_url
    assert_response :success
  end
end

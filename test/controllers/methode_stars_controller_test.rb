require "test_helper"

class MethodeStarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @methode_star = methode_stars(:one)
  end

  test "should get index" do
    get methode_stars_url
    assert_response :success
  end

  test "should get new" do
    get new_methode_star_url
    assert_response :success
  end

  test "should create methode_star" do
    assert_difference("MethodeStar.count") do
      post methode_stars_url, params: { methode_star: { action: @methode_star.action, resultat: @methode_star.resultat, situation: @methode_star.situation, soft_skill_name: @methode_star.soft_skill_name, tache: @methode_star.tache } }
    end

    assert_redirected_to methode_star_url(MethodeStar.last)
  end

  test "should show methode_star" do
    get methode_star_url(@methode_star)
    assert_response :success
  end

  test "should get edit" do
    get edit_methode_star_url(@methode_star)
    assert_response :success
  end

  test "should update methode_star" do
    patch methode_star_url(@methode_star), params: { methode_star: { action: @methode_star.action, resultat: @methode_star.resultat, situation: @methode_star.situation, soft_skill_name: @methode_star.soft_skill_name, tache: @methode_star.tache } }
    assert_redirected_to methode_star_url(@methode_star)
  end

  test "should destroy methode_star" do
    assert_difference("MethodeStar.count", -1) do
      delete methode_star_url(@methode_star)
    end

    assert_redirected_to methode_stars_url
  end
end

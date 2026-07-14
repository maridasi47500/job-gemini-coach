require "test_helper"

class CanalRecrutementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @canal_recrutement = canal_recrutements(:one)
  end

  test "should get index" do
    get canal_recrutements_url
    assert_response :success
  end

  test "should get new" do
    get new_canal_recrutement_url
    assert_response :success
  end

  test "should create canal_recrutement" do
    assert_difference("CanalRecrutement.count") do
      post canal_recrutements_url, params: { canal_recrutement: { city_id: @canal_recrutement.city_id, name: @canal_recrutement.name } }
    end

    assert_redirected_to canal_recrutement_url(CanalRecrutement.last)
  end

  test "should show canal_recrutement" do
    get canal_recrutement_url(@canal_recrutement)
    assert_response :success
  end

  test "should get edit" do
    get edit_canal_recrutement_url(@canal_recrutement)
    assert_response :success
  end

  test "should update canal_recrutement" do
    patch canal_recrutement_url(@canal_recrutement), params: { canal_recrutement: { city_id: @canal_recrutement.city_id, name: @canal_recrutement.name } }
    assert_redirected_to canal_recrutement_url(@canal_recrutement)
  end

  test "should destroy canal_recrutement" do
    assert_difference("CanalRecrutement.count", -1) do
      delete canal_recrutement_url(@canal_recrutement)
    end

    assert_redirected_to canal_recrutements_url
  end
end

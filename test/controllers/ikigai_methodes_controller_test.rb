require "test_helper"

class IkigaiMethodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ikigai_methode = ikigai_methodes(:one)
  end

  test "should get index" do
    get ikigai_methodes_url
    assert_response :success
  end

  test "should get new" do
    get new_ikigai_methode_url
    assert_response :success
  end

  test "should create ikigai_methode" do
    assert_difference("IkigaiMethode.count") do
      post ikigai_methodes_url, params: { ikigai_methode: { aimer: @ikigai_methode.aimer, besoin: @ikigai_methode.besoin, doue: @ikigai_methode.doue, mission: @ikigai_methode.mission, passion: @ikigai_methode.passion, paye: @ikigai_methode.paye, profession: @ikigai_methode.profession, vocation: @ikigai_methode.vocation } }
    end

    assert_redirected_to ikigai_methode_url(IkigaiMethode.last)
  end

  test "should show ikigai_methode" do
    get ikigai_methode_url(@ikigai_methode)
    assert_response :success
  end

  test "should get edit" do
    get edit_ikigai_methode_url(@ikigai_methode)
    assert_response :success
  end

  test "should update ikigai_methode" do
    patch ikigai_methode_url(@ikigai_methode), params: { ikigai_methode: { aimer: @ikigai_methode.aimer, besoin: @ikigai_methode.besoin, doue: @ikigai_methode.doue, mission: @ikigai_methode.mission, passion: @ikigai_methode.passion, paye: @ikigai_methode.paye, profession: @ikigai_methode.profession, vocation: @ikigai_methode.vocation } }
    assert_redirected_to ikigai_methode_url(@ikigai_methode)
  end

  test "should destroy ikigai_methode" do
    assert_difference("IkigaiMethode.count", -1) do
      delete ikigai_methode_url(@ikigai_methode)
    end

    assert_redirected_to ikigai_methodes_url
  end
end

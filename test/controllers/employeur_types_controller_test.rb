require "test_helper"

class EmployeurTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employeur_type = employeur_types(:one)
  end

  test "should get index" do
    get employeur_types_url
    assert_response :success
  end

  test "should get new" do
    get new_employeur_type_url
    assert_response :success
  end

  test "should create employeur_type" do
    assert_difference("EmployeurType.count") do
      post employeur_types_url, params: { employeur_type: { name: @employeur_type.name } }
    end

    assert_redirected_to employeur_type_url(EmployeurType.last)
  end

  test "should show employeur_type" do
    get employeur_type_url(@employeur_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_employeur_type_url(@employeur_type)
    assert_response :success
  end

  test "should update employeur_type" do
    patch employeur_type_url(@employeur_type), params: { employeur_type: { name: @employeur_type.name } }
    assert_redirected_to employeur_type_url(@employeur_type)
  end

  test "should destroy employeur_type" do
    assert_difference("EmployeurType.count", -1) do
      delete employeur_type_url(@employeur_type)
    end

    assert_redirected_to employeur_types_url
  end
end

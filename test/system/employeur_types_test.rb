require "application_system_test_case"

class EmployeurTypesTest < ApplicationSystemTestCase
  setup do
    @employeur_type = employeur_types(:one)
  end

  test "visiting the index" do
    visit employeur_types_url
    assert_selector "h1", text: "Employeur types"
  end

  test "should create employeur type" do
    visit employeur_types_url
    click_on "New employeur type"

    fill_in "Name", with: @employeur_type.name
    click_on "Create Employeur type"

    assert_text "Employeur type was successfully created"
    click_on "Back"
  end

  test "should update Employeur type" do
    visit employeur_type_url(@employeur_type)
    click_on "Edit this employeur type", match: :first

    fill_in "Name", with: @employeur_type.name
    click_on "Update Employeur type"

    assert_text "Employeur type was successfully updated"
    click_on "Back"
  end

  test "should destroy Employeur type" do
    visit employeur_type_url(@employeur_type)
    click_on "Destroy this employeur type", match: :first

    assert_text "Employeur type was successfully destroyed"
  end
end

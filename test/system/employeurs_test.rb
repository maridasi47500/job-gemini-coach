require "application_system_test_case"

class EmployeursTest < ApplicationSystemTestCase
  setup do
    @employeur = employeurs(:one)
  end

  test "visiting the index" do
    visit employeurs_url
    assert_selector "h1", text: "Employeurs"
  end

  test "should create employeur" do
    visit employeurs_url
    click_on "New employeur"

    fill_in "Employeur type", with: @employeur.employeur_type_id
    fill_in "Name", with: @employeur.name
    fill_in "Secteur", with: @employeur.secteur_id
    click_on "Create Employeur"

    assert_text "Employeur was successfully created"
    click_on "Back"
  end

  test "should update Employeur" do
    visit employeur_url(@employeur)
    click_on "Edit this employeur", match: :first

    fill_in "Employeur type", with: @employeur.employeur_type_id
    fill_in "Name", with: @employeur.name
    fill_in "Secteur", with: @employeur.secteur_id
    click_on "Update Employeur"

    assert_text "Employeur was successfully updated"
    click_on "Back"
  end

  test "should destroy Employeur" do
    visit employeur_url(@employeur)
    click_on "Destroy this employeur", match: :first

    assert_text "Employeur was successfully destroyed"
  end
end

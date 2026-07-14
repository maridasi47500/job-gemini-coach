require "application_system_test_case"

class SecteursTest < ApplicationSystemTestCase
  setup do
    @secteur = secteurs(:one)
  end

  test "visiting the index" do
    visit secteurs_url
    assert_selector "h1", text: "Secteurs"
  end

  test "should create secteur" do
    visit secteurs_url
    click_on "New secteur"

    fill_in "Name", with: @secteur.name
    click_on "Create Secteur"

    assert_text "Secteur was successfully created"
    click_on "Back"
  end

  test "should update Secteur" do
    visit secteur_url(@secteur)
    click_on "Edit this secteur", match: :first

    fill_in "Name", with: @secteur.name
    click_on "Update Secteur"

    assert_text "Secteur was successfully updated"
    click_on "Back"
  end

  test "should destroy Secteur" do
    visit secteur_url(@secteur)
    click_on "Destroy this secteur", match: :first

    assert_text "Secteur was successfully destroyed"
  end
end

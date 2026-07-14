require "application_system_test_case"

class CanalRecrutementsTest < ApplicationSystemTestCase
  setup do
    @canal_recrutement = canal_recrutements(:one)
  end

  test "visiting the index" do
    visit canal_recrutements_url
    assert_selector "h1", text: "Canal recrutements"
  end

  test "should create canal recrutement" do
    visit canal_recrutements_url
    click_on "New canal recrutement"

    fill_in "City", with: @canal_recrutement.city_id
    fill_in "Name", with: @canal_recrutement.name
    click_on "Create Canal recrutement"

    assert_text "Canal recrutement was successfully created"
    click_on "Back"
  end

  test "should update Canal recrutement" do
    visit canal_recrutement_url(@canal_recrutement)
    click_on "Edit this canal recrutement", match: :first

    fill_in "City", with: @canal_recrutement.city_id
    fill_in "Name", with: @canal_recrutement.name
    click_on "Update Canal recrutement"

    assert_text "Canal recrutement was successfully updated"
    click_on "Back"
  end

  test "should destroy Canal recrutement" do
    visit canal_recrutement_url(@canal_recrutement)
    click_on "Destroy this canal recrutement", match: :first

    assert_text "Canal recrutement was successfully destroyed"
  end
end

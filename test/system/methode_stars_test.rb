require "application_system_test_case"

class MethodeStarsTest < ApplicationSystemTestCase
  setup do
    @methode_star = methode_stars(:one)
  end

  test "visiting the index" do
    visit methode_stars_url
    assert_selector "h1", text: "Methode stars"
  end

  test "should create methode star" do
    visit methode_stars_url
    click_on "New methode star"

    fill_in "Action", with: @methode_star.action
    fill_in "Resultat", with: @methode_star.resultat
    fill_in "Situation", with: @methode_star.situation
    fill_in "Soft skill name", with: @methode_star.soft_skill_name
    fill_in "Tache", with: @methode_star.tache
    click_on "Create Methode star"

    assert_text "Methode star was successfully created"
    click_on "Back"
  end

  test "should update Methode star" do
    visit methode_star_url(@methode_star)
    click_on "Edit this methode star", match: :first

    fill_in "Action", with: @methode_star.action
    fill_in "Resultat", with: @methode_star.resultat
    fill_in "Situation", with: @methode_star.situation
    fill_in "Soft skill name", with: @methode_star.soft_skill_name
    fill_in "Tache", with: @methode_star.tache
    click_on "Update Methode star"

    assert_text "Methode star was successfully updated"
    click_on "Back"
  end

  test "should destroy Methode star" do
    visit methode_star_url(@methode_star)
    click_on "Destroy this methode star", match: :first

    assert_text "Methode star was successfully destroyed"
  end
end

require "application_system_test_case"

class IkigaiMethodesTest < ApplicationSystemTestCase
  setup do
    @ikigai_methode = ikigai_methodes(:one)
  end

  test "visiting the index" do
    visit ikigai_methodes_url
    assert_selector "h1", text: "Ikigai methodes"
  end

  test "should create ikigai methode" do
    visit ikigai_methodes_url
    click_on "New ikigai methode"

    fill_in "Aimer", with: @ikigai_methode.aimer
    fill_in "Besoin", with: @ikigai_methode.besoin
    fill_in "Doue", with: @ikigai_methode.doue
    fill_in "Mission", with: @ikigai_methode.mission
    fill_in "Passion", with: @ikigai_methode.passion
    fill_in "Paye", with: @ikigai_methode.paye
    fill_in "Profession", with: @ikigai_methode.profession
    fill_in "Vocation", with: @ikigai_methode.vocation
    click_on "Create Ikigai methode"

    assert_text "Ikigai methode was successfully created"
    click_on "Back"
  end

  test "should update Ikigai methode" do
    visit ikigai_methode_url(@ikigai_methode)
    click_on "Edit this ikigai methode", match: :first

    fill_in "Aimer", with: @ikigai_methode.aimer
    fill_in "Besoin", with: @ikigai_methode.besoin
    fill_in "Doue", with: @ikigai_methode.doue
    fill_in "Mission", with: @ikigai_methode.mission
    fill_in "Passion", with: @ikigai_methode.passion
    fill_in "Paye", with: @ikigai_methode.paye
    fill_in "Profession", with: @ikigai_methode.profession
    fill_in "Vocation", with: @ikigai_methode.vocation
    click_on "Update Ikigai methode"

    assert_text "Ikigai methode was successfully updated"
    click_on "Back"
  end

  test "should destroy Ikigai methode" do
    visit ikigai_methode_url(@ikigai_methode)
    click_on "Destroy this ikigai methode", match: :first

    assert_text "Ikigai methode was successfully destroyed"
  end
end

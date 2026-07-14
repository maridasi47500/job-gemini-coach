require "application_system_test_case"

class ApplicationForAJobsTest < ApplicationSystemTestCase
  setup do
    @application_for_a_job = application_for_a_jobs(:one)
  end

  test "visiting the index" do
    visit application_for_a_jobs_url
    assert_selector "h1", text: "Application for a jobs"
  end

  test "should create application for a job" do
    visit application_for_a_jobs_url
    click_on "New application for a job"

    fill_in "Datedenvoi", with: @application_for_a_job.datedenvoi
    fill_in "Datederelance", with: @application_for_a_job.datederelance
    fill_in "Entreprise", with: @application_for_a_job.entreprise
    fill_in "Lieu", with: @application_for_a_job.lieu
    fill_in "Poste", with: @application_for_a_job.poste
    fill_in "Statut", with: @application_for_a_job.statut
    click_on "Create Application for a job"

    assert_text "Application for a job was successfully created"
    click_on "Back"
  end

  test "should update Application for a job" do
    visit application_for_a_job_url(@application_for_a_job)
    click_on "Edit this application for a job", match: :first

    fill_in "Datedenvoi", with: @application_for_a_job.datedenvoi
    fill_in "Datederelance", with: @application_for_a_job.datederelance
    fill_in "Entreprise", with: @application_for_a_job.entreprise
    fill_in "Lieu", with: @application_for_a_job.lieu
    fill_in "Poste", with: @application_for_a_job.poste
    fill_in "Statut", with: @application_for_a_job.statut
    click_on "Update Application for a job"

    assert_text "Application for a job was successfully updated"
    click_on "Back"
  end

  test "should destroy Application for a job" do
    visit application_for_a_job_url(@application_for_a_job)
    click_on "Destroy this application for a job", match: :first

    assert_text "Application for a job was successfully destroyed"
  end
end

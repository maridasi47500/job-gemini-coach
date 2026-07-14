require "test_helper"

class ApplicationForAJobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @application_for_a_job = application_for_a_jobs(:one)
  end

  test "should get index" do
    get application_for_a_jobs_url
    assert_response :success
  end

  test "should get new" do
    get new_application_for_a_job_url
    assert_response :success
  end

  test "should create application_for_a_job" do
    assert_difference("ApplicationForAJob.count") do
      post application_for_a_jobs_url, params: { application_for_a_job: { datedenvoi: @application_for_a_job.datedenvoi, datederelance: @application_for_a_job.datederelance, entreprise: @application_for_a_job.entreprise, lieu: @application_for_a_job.lieu, poste: @application_for_a_job.poste, statut: @application_for_a_job.statut } }
    end

    assert_redirected_to application_for_a_job_url(ApplicationForAJob.last)
  end

  test "should show application_for_a_job" do
    get application_for_a_job_url(@application_for_a_job)
    assert_response :success
  end

  test "should get edit" do
    get edit_application_for_a_job_url(@application_for_a_job)
    assert_response :success
  end

  test "should update application_for_a_job" do
    patch application_for_a_job_url(@application_for_a_job), params: { application_for_a_job: { datedenvoi: @application_for_a_job.datedenvoi, datederelance: @application_for_a_job.datederelance, entreprise: @application_for_a_job.entreprise, lieu: @application_for_a_job.lieu, poste: @application_for_a_job.poste, statut: @application_for_a_job.statut } }
    assert_redirected_to application_for_a_job_url(@application_for_a_job)
  end

  test "should destroy application_for_a_job" do
    assert_difference("ApplicationForAJob.count", -1) do
      delete application_for_a_job_url(@application_for_a_job)
    end

    assert_redirected_to application_for_a_jobs_url
  end
end

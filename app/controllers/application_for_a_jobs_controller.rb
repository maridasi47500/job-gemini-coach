class ApplicationForAJobsController < ApplicationController
  before_action :set_application_for_a_job, only: %i[ show edit update destroy ]

  # GET /application_for_a_jobs or /application_for_a_jobs.json
  def index
    @application_for_a_jobs = ApplicationForAJob.all
  end

  # GET /application_for_a_jobs/1 or /application_for_a_jobs/1.json
  def show
  end

  # GET /application_for_a_jobs/new
  def new
    @application_for_a_job = ApplicationForAJob.new
  end

  # GET /application_for_a_jobs/1/edit
  def edit
  end

  # POST /application_for_a_jobs or /application_for_a_jobs.json
  def create
    @application_for_a_job = ApplicationForAJob.new(application_for_a_job_params)

    respond_to do |format|
      if @application_for_a_job.save
        format.html { redirect_to @application_for_a_job, notice: "Application for a job was successfully created." }
        format.json { render :show, status: :created, location: @application_for_a_job }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @application_for_a_job.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /application_for_a_jobs/1 or /application_for_a_jobs/1.json
  def update
    respond_to do |format|
      if @application_for_a_job.update(application_for_a_job_params)
        format.html { redirect_to @application_for_a_job, notice: "Application for a job was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @application_for_a_job }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @application_for_a_job.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /application_for_a_jobs/1 or /application_for_a_jobs/1.json
  def destroy
    @application_for_a_job.destroy!

    respond_to do |format|
      format.html { redirect_to application_for_a_jobs_path, notice: "Application for a job was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_for_a_job
      @application_for_a_job = ApplicationForAJob.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def application_for_a_job_params
      params.require(:application_for_a_job).permit(:entreprise, :lieu, :poste, :statut, :datedenvoi, :datederelance, :lien_internet, :contact, :date_dernier_contact, :detail_offre, :commentaire)
    end
end

class CanalRecrutementsController < ApplicationController
  before_action :set_canal_recrutement, only: %i[ show edit update destroy ]

  # GET /canal_recrutements or /canal_recrutements.json
  def index
    @canal_recrutements = CanalRecrutement.all
  end

  # GET /canal_recrutements/1 or /canal_recrutements/1.json
  def show
  end

  # GET /canal_recrutements/new
  def new
    @canal_recrutement = CanalRecrutement.new
  end

  # GET /canal_recrutements/1/edit
  def edit
  end

  # POST /canal_recrutements or /canal_recrutements.json
  def create
    @canal_recrutement = CanalRecrutement.new(canal_recrutement_params)

    respond_to do |format|
      if @canal_recrutement.save
        format.html { redirect_to @canal_recrutement, notice: "Canal recrutement was successfully created." }
        format.json { render :show, status: :created, location: @canal_recrutement }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @canal_recrutement.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /canal_recrutements/1 or /canal_recrutements/1.json
  def update
    respond_to do |format|
      if @canal_recrutement.update(canal_recrutement_params)
        format.html { redirect_to @canal_recrutement, notice: "Canal recrutement was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @canal_recrutement }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @canal_recrutement.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /canal_recrutements/1 or /canal_recrutements/1.json
  def destroy
    @canal_recrutement.destroy!

    respond_to do |format|
      format.html { redirect_to canal_recrutements_path, notice: "Canal recrutement was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_canal_recrutement
      @canal_recrutement = CanalRecrutement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def canal_recrutement_params
      params.require(:canal_recrutement).permit(:name, :city_id)
    end
end

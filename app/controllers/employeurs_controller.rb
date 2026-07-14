class EmployeursController < ApplicationController
  before_action :set_employeur, only: %i[ show edit update destroy ]

  # GET /employeurs or /employeurs.json
  def index
    @employeurs = Employeur.all
  end

  # GET /employeurs/1 or /employeurs/1.json
  def show
  end

  # GET /employeurs/new
  def new
    @employeur = Employeur.new
  end

  # GET /employeurs/1/edit
  def edit
  end

  # POST /employeurs or /employeurs.json
  def create
    @employeur = Employeur.new(employeur_params)

    respond_to do |format|
      if @employeur.save
        format.html { redirect_to @employeur, notice: "Employeur was successfully created." }
        format.json { render :show, status: :created, location: @employeur }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @employeur.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /employeurs/1 or /employeurs/1.json
  def update
    respond_to do |format|
      if @employeur.update(employeur_params)
        format.html { redirect_to @employeur, notice: "Employeur was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @employeur }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @employeur.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /employeurs/1 or /employeurs/1.json
  def destroy
    @employeur.destroy!

    respond_to do |format|
      format.html { redirect_to employeurs_path, notice: "Employeur was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeur
      @employeur = Employeur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employeur_params
      params.require(:employeur).permit(:name, :secteur_id, :employeur_type_id)
    end
end

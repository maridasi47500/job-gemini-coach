class SecteursController < ApplicationController
  before_action :set_secteur, only: %i[ show edit update destroy ]

  # GET /secteurs or /secteurs.json
  def index
    @secteurs = Secteur.all
  end

  # GET /secteurs/1 or /secteurs/1.json
  def show
  end

  # GET /secteurs/new
  def new
    @secteur = Secteur.new
  end

  # GET /secteurs/1/edit
  def edit
  end

  # POST /secteurs or /secteurs.json
  def create
    @secteur = Secteur.new(secteur_params)

    respond_to do |format|
      if @secteur.save
        format.html { redirect_to @secteur, notice: "Secteur was successfully created." }
        format.json { render :show, status: :created, location: @secteur }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @secteur.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /secteurs/1 or /secteurs/1.json
  def update
    respond_to do |format|
      if @secteur.update(secteur_params)
        format.html { redirect_to @secteur, notice: "Secteur was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @secteur }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @secteur.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /secteurs/1 or /secteurs/1.json
  def destroy
    @secteur.destroy!

    respond_to do |format|
      format.html { redirect_to secteurs_path, notice: "Secteur was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secteur
      @secteur = Secteur.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def secteur_params
      params.require(:secteur).permit(:name)
    end
end

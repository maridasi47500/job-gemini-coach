class IkigaiMethodesController < ApplicationController
  before_action :set_ikigai_methode, only: %i[ show edit update destroy ]

  # GET /ikigai_methodes or /ikigai_methodes.json
  def index
    @ikigai_methodes = IkigaiMethode.all
  end

  # GET /ikigai_methodes/1 or /ikigai_methodes/1.json
  def show
  end

  # GET /ikigai_methodes/new
  def new
    @ikigai_methode = IkigaiMethode.new
  end

  # GET /ikigai_methodes/1/edit
  def edit
  end

  # POST /ikigai_methodes or /ikigai_methodes.json
  def create
    @ikigai_methode = IkigaiMethode.new(ikigai_methode_params)

    respond_to do |format|
      if @ikigai_methode.save
        format.html { redirect_to @ikigai_methode, notice: "Ikigai methode was successfully created." }
        format.json { render :show, status: :created, location: @ikigai_methode }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @ikigai_methode.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /ikigai_methodes/1 or /ikigai_methodes/1.json
  def update
    respond_to do |format|
      if @ikigai_methode.update(ikigai_methode_params)
        format.html { redirect_to @ikigai_methode, notice: "Ikigai methode was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @ikigai_methode }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @ikigai_methode.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /ikigai_methodes/1 or /ikigai_methodes/1.json
  def destroy
    @ikigai_methode.destroy!

    respond_to do |format|
      format.html { redirect_to ikigai_methodes_path, notice: "Ikigai methode was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ikigai_methode
      @ikigai_methode = IkigaiMethode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ikigai_methode_params
      params.require(:ikigai_methode).permit(:vocation, :profession, :passion, :mission, :aimer, :doue, :besoin, :paye)
    end
end

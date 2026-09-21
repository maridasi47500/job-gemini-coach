class MethodeStarsController < ApplicationController
  before_action :set_methode_star, only: %i[ show edit update destroy ]

  # GET /methode_stars or /methode_stars.json
  def index
    @methode_stars = MethodeStar.all
  end

  # GET /methode_stars/1 or /methode_stars/1.json
  def show
  end

  # GET /methode_stars/new
  def new
    @methode_star = MethodeStar.new
  end

  # GET /methode_stars/1/edit
  def edit
  end

  # POST /methode_stars or /methode_stars.json
  def create
    @methode_star = MethodeStar.new(methode_star_params)

    respond_to do |format|
      if @methode_star.save
        format.html { redirect_to @methode_star, notice: "Methode star was successfully created." }
        format.json { render :show, status: :created, location: @methode_star }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @methode_star.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /methode_stars/1 or /methode_stars/1.json
  def update
    respond_to do |format|
      if @methode_star.update(methode_star_params)
        format.html { redirect_to @methode_star, notice: "Methode star was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @methode_star }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @methode_star.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /methode_stars/1 or /methode_stars/1.json
  def destroy
    @methode_star.destroy!

    respond_to do |format|
      format.html { redirect_to methode_stars_path, notice: "Methode star was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_methode_star
      @methode_star = MethodeStar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def methode_star_params
      params.require(:methode_star).permit(:soft_skill_name, :situation, :tache, :action, :resultat)
    end
end

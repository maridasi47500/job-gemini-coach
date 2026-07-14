class EmployeurTypesController < ApplicationController
  before_action :set_employeur_type, only: %i[ show edit update destroy ]

  # GET /employeur_types or /employeur_types.json
  def index
    @employeur_types = EmployeurType.all
  end

  # GET /employeur_types/1 or /employeur_types/1.json
  def show
  end

  # GET /employeur_types/new
  def new
    @employeur_type = EmployeurType.new
  end

  # GET /employeur_types/1/edit
  def edit
  end

  # POST /employeur_types or /employeur_types.json
  def create
    @employeur_type = EmployeurType.new(employeur_type_params)

    respond_to do |format|
      if @employeur_type.save
        format.html { redirect_to @employeur_type, notice: "Employeur type was successfully created." }
        format.json { render :show, status: :created, location: @employeur_type }
      else
        format.html { render :new, status: :unprocessable_content }
        format.json { render json: @employeur_type.errors, status: :unprocessable_content }
      end
    end
  end

  # PATCH/PUT /employeur_types/1 or /employeur_types/1.json
  def update
    respond_to do |format|
      if @employeur_type.update(employeur_type_params)
        format.html { redirect_to @employeur_type, notice: "Employeur type was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @employeur_type }
      else
        format.html { render :edit, status: :unprocessable_content }
        format.json { render json: @employeur_type.errors, status: :unprocessable_content }
      end
    end
  end

  # DELETE /employeur_types/1 or /employeur_types/1.json
  def destroy
    @employeur_type.destroy!

    respond_to do |format|
      format.html { redirect_to employeur_types_path, notice: "Employeur type was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employeur_type
      @employeur_type = EmployeurType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employeur_type_params
      params.require(:employeur_type).permit(:name)
    end
end

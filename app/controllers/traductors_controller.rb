class TraductorsController < ApplicationController
  before_action :set_traductor, only: %i[ show edit update destroy ]

  # GET /traductors or /traductors.json
  def index
    @traductors = Traductor.all
  end

  # GET /traductors/1 or /traductors/1.json
  def show
  end

  # GET /traductors/new
  def new
    @traductor = Traductor.new
  end

  # GET /traductors/1/edit
  def edit
  end

  # POST /traductors or /traductors.json
  def create
    @traductor = Traductor.new(traductor_params)

    respond_to do |format|
      if @traductor.save
        format.html { redirect_to @traductor, notice: "Traductor was successfully created." }
        format.json { render :show, status: :created, location: @traductor }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @traductor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traductors/1 or /traductors/1.json
  def update
    respond_to do |format|
      if @traductor.update(traductor_params)
        format.html { redirect_to @traductor, notice: "Traductor was successfully updated." }
        format.json { render :show, status: :ok, location: @traductor }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @traductor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traductors/1 or /traductors/1.json
  def destroy
    @traductor.destroy
    respond_to do |format|
      format.html { redirect_to traductors_url, notice: "Traductor was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traductor
      @traductor = Traductor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def traductor_params
      params.require(:traductor).permit(:nombre, :correo)
    end
end

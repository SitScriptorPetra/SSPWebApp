class TablaturasController < ApplicationController
  before_action :set_tablatura, only: %i[ show edit update destroy ]

  # GET /tablaturas or /tablaturas.json
  def index
    @tablaturas = Tablatura.all
  end

  # GET /tablaturas/1 or /tablaturas/1.json
  def show
  end

  # GET /tablaturas/new
  def new
    @tablatura = Tablatura.new
  end

  # GET /tablaturas/1/edit
  def edit
  end

  # POST /tablaturas or /tablaturas.json
  def create
    @tablatura = Tablatura.new(tablatura_params)

    respond_to do |format|
      if @tablatura.save
        format.html { redirect_to @tablatura, notice: "Tablatura was successfully created." }
        format.json { render :show, status: :created, location: @tablatura }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tablatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tablaturas/1 or /tablaturas/1.json
  def update
    respond_to do |format|
      if @tablatura.update(tablatura_params)
        format.html { redirect_to @tablatura, notice: "Tablatura was successfully updated." }
        format.json { render :show, status: :ok, location: @tablatura }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tablatura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tablaturas/1 or /tablaturas/1.json
  def destroy
    @tablatura.destroy
    respond_to do |format|
      format.html { redirect_to tablaturas_url, notice: "Tablatura was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tablatura
      @tablatura = Tablatura.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tablatura_params
      params.require(:tablatura).permit(:traductor, :fecha, :web)
    end
end

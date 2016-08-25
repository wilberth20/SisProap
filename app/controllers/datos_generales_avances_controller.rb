class DatosGeneralesAvancesController < ApplicationController
  before_action :set_datos_generales_avance, only: [:show, :edit, :update, :destroy]

  # GET /datos_generales_avances
  # GET /datos_generales_avances.json
  def index
    @datos_generales_avances = DatosGeneralesAvance.all
  end

  # GET /datos_generales_avances/1
  # GET /datos_generales_avances/1.json
  def show
  end

  # GET /datos_generales_avances/new
  def new
    @datos_generales_avance = DatosGeneralesAvance.new
  end

  # GET /datos_generales_avances/1/edit
  def edit
  end

  # POST /datos_generales_avances
  # POST /datos_generales_avances.json
  def create
    @datos_generales_avance = DatosGeneralesAvance.new(datos_generales_avance_params)

    respond_to do |format|
      if @datos_generales_avance.save
        format.html { redirect_to @datos_generales_avance, notice: 'Datos generales avance was successfully created.' }
        format.json { render :show, status: :created, location: @datos_generales_avance }
      else
        format.html { render :new }
        format.json { render json: @datos_generales_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_generales_avances/1
  # PATCH/PUT /datos_generales_avances/1.json
  def update
    respond_to do |format|
      if @datos_generales_avance.update(datos_generales_avance_params)
        format.html { redirect_to @datos_generales_avance, notice: 'Datos generales avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @datos_generales_avance }
      else
        format.html { render :edit }
        format.json { render json: @datos_generales_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_generales_avances/1
  # DELETE /datos_generales_avances/1.json
  def destroy
    @datos_generales_avance.destroy
    respond_to do |format|
      format.html { redirect_to datos_generales_avances_url, notice: 'Datos generales avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datos_generales_avance
      @datos_generales_avance = DatosGeneralesAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datos_generales_avance_params
      params.require(:datos_generales_avance).permit(:nombre_inv, :apellido_inv, :categoria, :nombre_proyecto, :area_investigacion, :linea_investigacion, :fecha_inicio, :fecha_fin, :facultad)
    end
end

class MonitoreoRiesgosAvancesController < ApplicationController
  before_action :set_monitoreo_riesgos_avance, only: [:show, :edit, :update, :destroy]

  # GET /monitoreo_riesgos_avances
  # GET /monitoreo_riesgos_avances.json
  def index
    @monitoreo_riesgos_avances = MonitoreoRiesgosAvance.all
  end

  # GET /monitoreo_riesgos_avances/1
  # GET /monitoreo_riesgos_avances/1.json
  def show
  end

  # GET /monitoreo_riesgos_avances/new
  def new
    @monitoreo_riesgos_avance = MonitoreoRiesgosAvance.new
  end

  # GET /monitoreo_riesgos_avances/1/edit
  def edit
  end

  # POST /monitoreo_riesgos_avances
  # POST /monitoreo_riesgos_avances.json
  def create
    @monitoreo_riesgos_avance = MonitoreoRiesgosAvance.new(monitoreo_riesgos_avance_params)

    respond_to do |format|
      if @monitoreo_riesgos_avance.save
        format.html { redirect_to @monitoreo_riesgos_avance, notice: 'Monitoreo riesgos avance was successfully created.' }
        format.json { render :show, status: :created, location: @monitoreo_riesgos_avance }
      else
        format.html { render :new }
        format.json { render json: @monitoreo_riesgos_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitoreo_riesgos_avances/1
  # PATCH/PUT /monitoreo_riesgos_avances/1.json
  def update
    respond_to do |format|
      if @monitoreo_riesgos_avance.update(monitoreo_riesgos_avance_params)
        format.html { redirect_to @monitoreo_riesgos_avance, notice: 'Monitoreo riesgos avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitoreo_riesgos_avance }
      else
        format.html { render :edit }
        format.json { render json: @monitoreo_riesgos_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitoreo_riesgos_avances/1
  # DELETE /monitoreo_riesgos_avances/1.json
  def destroy
    @monitoreo_riesgos_avance.destroy
    respond_to do |format|
      format.html { redirect_to monitoreo_riesgos_avances_url, notice: 'Monitoreo riesgos avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoreo_riesgos_avance
      @monitoreo_riesgos_avance = MonitoreoRiesgosAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitoreo_riesgos_avance_params
      params.require(:monitoreo_riesgos_avance).permit(:desc_riegos, :probab_ocurrencia, :acciones_mitigacion, :observaciones_adicionales, :informe_financiero)
    end
end

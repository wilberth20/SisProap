class MonitoreoBeneficioAvancesController < ApplicationController
  before_action :set_monitoreo_beneficio_avance, only: [:show, :edit, :update, :destroy]

  # GET /monitoreo_beneficio_avances
  # GET /monitoreo_beneficio_avances.json
  def index
    @monitoreo_beneficio_avances = MonitoreoBeneficioAvance.all
  end

  # GET /monitoreo_beneficio_avances/1
  # GET /monitoreo_beneficio_avances/1.json
  def show
  end

  # GET /monitoreo_beneficio_avances/new
  def new
    @monitoreo_beneficio_avance = MonitoreoBeneficioAvance.new
  end

  # GET /monitoreo_beneficio_avances/1/edit
  def edit
  end

  # POST /monitoreo_beneficio_avances
  # POST /monitoreo_beneficio_avances.json
  def create
    @monitoreo_beneficio_avance = MonitoreoBeneficioAvance.new(monitoreo_beneficio_avance_params)

    respond_to do |format|
      if @monitoreo_beneficio_avance.save
        format.html { redirect_to @monitoreo_beneficio_avance, notice: 'Monitoreo beneficio avance was successfully created.' }
        format.json { render :show, status: :created, location: @monitoreo_beneficio_avance }
      else
        format.html { render :new }
        format.json { render json: @monitoreo_beneficio_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitoreo_beneficio_avances/1
  # PATCH/PUT /monitoreo_beneficio_avances/1.json
  def update
    respond_to do |format|
      if @monitoreo_beneficio_avance.update(monitoreo_beneficio_avance_params)
        format.html { redirect_to @monitoreo_beneficio_avance, notice: 'Monitoreo beneficio avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitoreo_beneficio_avance }
      else
        format.html { render :edit }
        format.json { render json: @monitoreo_beneficio_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitoreo_beneficio_avances/1
  # DELETE /monitoreo_beneficio_avances/1.json
  def destroy
    @monitoreo_beneficio_avance.destroy
    respond_to do |format|
      format.html { redirect_to monitoreo_beneficio_avances_url, notice: 'Monitoreo beneficio avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoreo_beneficio_avance
      @monitoreo_beneficio_avance = MonitoreoBeneficioAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitoreo_beneficio_avance_params
      params.require(:monitoreo_beneficio_avance).permit(:nombre_contacto, :apellido_contacto, :nombre_organizacion, :tipo_colaboracion, :compromiso_organizacion, :actv_realizadas)
    end
end

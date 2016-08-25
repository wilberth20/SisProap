class DesarrolloEjcucionAvancesController < ApplicationController
  before_action :set_desarrollo_ejcucion_avance, only: [:show, :edit, :update, :destroy]

  # GET /desarrollo_ejcucion_avances
  # GET /desarrollo_ejcucion_avances.json
  def index
    @desarrollo_ejcucion_avances = DesarrolloEjcucionAvance.all
  end

  # GET /desarrollo_ejcucion_avances/1
  # GET /desarrollo_ejcucion_avances/1.json
  def show
  end

  # GET /desarrollo_ejcucion_avances/new
  def new
    @desarrollo_ejcucion_avance = DesarrolloEjcucionAvance.new
  end

  # GET /desarrollo_ejcucion_avances/1/edit
  def edit
  end

  # POST /desarrollo_ejcucion_avances
  # POST /desarrollo_ejcucion_avances.json
  def create
    @desarrollo_ejcucion_avance = DesarrolloEjcucionAvance.new(desarrollo_ejcucion_avance_params)

    respond_to do |format|
      if @desarrollo_ejcucion_avance.save
        format.html { redirect_to @desarrollo_ejcucion_avance, notice: 'Desarrollo ejcucion avance was successfully created.' }
        format.json { render :show, status: :created, location: @desarrollo_ejcucion_avance }
      else
        format.html { render :new }
        format.json { render json: @desarrollo_ejcucion_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desarrollo_ejcucion_avances/1
  # PATCH/PUT /desarrollo_ejcucion_avances/1.json
  def update
    respond_to do |format|
      if @desarrollo_ejcucion_avance.update(desarrollo_ejcucion_avance_params)
        format.html { redirect_to @desarrollo_ejcucion_avance, notice: 'Desarrollo ejcucion avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @desarrollo_ejcucion_avance }
      else
        format.html { render :edit }
        format.json { render json: @desarrollo_ejcucion_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desarrollo_ejcucion_avances/1
  # DELETE /desarrollo_ejcucion_avances/1.json
  def destroy
    @desarrollo_ejcucion_avance.destroy
    respond_to do |format|
      format.html { redirect_to desarrollo_ejcucion_avances_url, notice: 'Desarrollo ejcucion avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desarrollo_ejcucion_avance
      @desarrollo_ejcucion_avance = DesarrolloEjcucionAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def desarrollo_ejcucion_avance_params
      params.require(:desarrollo_ejcucion_avance).permit(:obj_especifico, :resultados, :actv_desarrolladas, :fecha_estiamda, :fecha_real, :estado_avance, :dific_resolver, :actv_pendientes)
    end
end

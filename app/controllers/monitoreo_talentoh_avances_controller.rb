class MonitoreoTalentohAvancesController < ApplicationController
  before_action :set_monitoreo_talentoh_avance, only: [:show, :edit, :update, :destroy]

  # GET /monitoreo_talentoh_avances
  # GET /monitoreo_talentoh_avances.json
  def index
    @monitoreo_talentoh_avances = MonitoreoTalentohAvance.all
  end

  # GET /monitoreo_talentoh_avances/1
  # GET /monitoreo_talentoh_avances/1.json
  def show
  end

  # GET /monitoreo_talentoh_avances/new
  def new
    @monitoreo_talentoh_avance = MonitoreoTalentohAvance.new
  end

  # GET /monitoreo_talentoh_avances/1/edit
  def edit
  end

  # POST /monitoreo_talentoh_avances
  # POST /monitoreo_talentoh_avances.json
  def create
    @monitoreo_talentoh_avance = MonitoreoTalentohAvance.new(monitoreo_talentoh_avance_params)

    respond_to do |format|
      if @monitoreo_talentoh_avance.save
        format.html { redirect_to @monitoreo_talentoh_avance, notice: 'Monitoreo talentoh avance was successfully created.' }
        format.json { render :show, status: :created, location: @monitoreo_talentoh_avance }
      else
        format.html { render :new }
        format.json { render json: @monitoreo_talentoh_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitoreo_talentoh_avances/1
  # PATCH/PUT /monitoreo_talentoh_avances/1.json
  def update
    respond_to do |format|
      if @monitoreo_talentoh_avance.update(monitoreo_talentoh_avance_params)
        format.html { redirect_to @monitoreo_talentoh_avance, notice: 'Monitoreo talentoh avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitoreo_talentoh_avance }
      else
        format.html { render :edit }
        format.json { render json: @monitoreo_talentoh_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitoreo_talentoh_avances/1
  # DELETE /monitoreo_talentoh_avances/1.json
  def destroy
    @monitoreo_talentoh_avance.destroy
    respond_to do |format|
      format.html { redirect_to monitoreo_talentoh_avances_url, notice: 'Monitoreo talentoh avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoreo_talentoh_avance
      @monitoreo_talentoh_avance = MonitoreoTalentohAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitoreo_talentoh_avance_params
      params.require(:monitoreo_talentoh_avance).permit(:nombre, :apellido, :nivel_academico, :titulo_trabajo, :facultad, :otra_info)
    end
end

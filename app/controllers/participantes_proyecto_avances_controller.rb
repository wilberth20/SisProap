class ParticipantesProyectoAvancesController < ApplicationController
  before_action :set_participantes_proyecto_avance, only: [:show, :edit, :update, :destroy]

  # GET /participantes_proyecto_avances
  # GET /participantes_proyecto_avances.json
  def index
    @participantes_proyecto_avances = ParticipantesProyectoAvance.all
  end

  # GET /participantes_proyecto_avances/1
  # GET /participantes_proyecto_avances/1.json
  def show
  end

  # GET /participantes_proyecto_avances/new
  def new
    @participantes_proyecto_avance = ParticipantesProyectoAvance.new
  end

  # GET /participantes_proyecto_avances/1/edit
  def edit
  end

  # POST /participantes_proyecto_avances
  # POST /participantes_proyecto_avances.json
  def create
    @participantes_proyecto_avance = ParticipantesProyectoAvance.new(participantes_proyecto_avance_params)

    respond_to do |format|
      if @participantes_proyecto_avance.save
        format.html { redirect_to @participantes_proyecto_avance, notice: 'Participantes proyecto avance was successfully created.' }
        format.json { render :show, status: :created, location: @participantes_proyecto_avance }
      else
        format.html { render :new }
        format.json { render json: @participantes_proyecto_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participantes_proyecto_avances/1
  # PATCH/PUT /participantes_proyecto_avances/1.json
  def update
    respond_to do |format|
      if @participantes_proyecto_avance.update(participantes_proyecto_avance_params)
        format.html { redirect_to @participantes_proyecto_avance, notice: 'Participantes proyecto avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @participantes_proyecto_avance }
      else
        format.html { render :edit }
        format.json { render json: @participantes_proyecto_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participantes_proyecto_avances/1
  # DELETE /participantes_proyecto_avances/1.json
  def destroy
    @participantes_proyecto_avance.destroy
    respond_to do |format|
      format.html { redirect_to participantes_proyecto_avances_url, notice: 'Participantes proyecto avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participantes_proyecto_avance
      @participantes_proyecto_avance = ParticipantesProyectoAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participantes_proyecto_avance_params
      params.require(:participantes_proyecto_avance).permit(:nombre_parti, :apellido_parti, :facultad, :cargo, :funciones_responsabilidades, :telefono, :correo, :resum_resultados)
    end
end

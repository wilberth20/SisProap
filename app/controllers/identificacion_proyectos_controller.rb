class IdentificacionProyectosController < ApplicationController
  before_action :set_identificacion_proyecto, only: [:show, :edit, :update, :destroy]

  # GET /identificacion_proyectos
  # GET /identificacion_proyectos.json
  def index
    @identificacion_proyectos = IdentificacionProyecto.all
  end

  # GET /identificacion_proyectos/1
  # GET /identificacion_proyectos/1.json
  def show
  end

  # GET /identificacion_proyectos/new
  def new
    @identificacion_proyecto = IdentificacionProyecto.new
  end

  # GET /identificacion_proyectos/1/edit
  def edit
  end

  # POST /identificacion_proyectos
  # POST /identificacion_proyectos.json
  def create
    @identificacion_proyecto = IdentificacionProyecto.new(identificacion_proyecto_params)

    respond_to do |format|
      if @identificacion_proyecto.save
        format.html { redirect_to @identificacion_proyecto, notice: 'Identificacion proyecto was successfully created.' }
        format.json { render :show, status: :created, location: @identificacion_proyecto }
      else
        format.html { render :new }
        format.json { render json: @identificacion_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /identificacion_proyectos/1
  # PATCH/PUT /identificacion_proyectos/1.json
  def update
    respond_to do |format|
      if @identificacion_proyecto.update(identificacion_proyecto_params)
        format.html { redirect_to @identificacion_proyecto, notice: 'Identificacion proyecto was successfully updated.' }
        format.json { render :show, status: :ok, location: @identificacion_proyecto }
      else
        format.html { render :edit }
        format.json { render json: @identificacion_proyecto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /identificacion_proyectos/1
  # DELETE /identificacion_proyectos/1.json
  def destroy
    @identificacion_proyecto.destroy
    respond_to do |format|
      format.html { redirect_to identificacion_proyectos_url, notice: 'Identificacion proyecto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_identificacion_proyecto
      @identificacion_proyecto = IdentificacionProyecto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def identificacion_proyecto_params
      params.require(:identificacion_proyecto).permit(:titulo, :fecha_inicio, :fecha_fin, :duracion, :area_estrategica, :linea, :resumen, :definicion_problema, :justificacio, :fundamento_teorico, :plan_analisis, :conclucion, :plan_vinculo_docente, :plan_talento_humano, :contraparte_beneficio, :anexos)
    end
end

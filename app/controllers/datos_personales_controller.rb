class DatosPersonalesController < ApplicationController
  before_action :set_datos_personale, only: [:show, :edit, :update, :destroy]

  # GET /datos_personales
  # GET /datos_personales.json
  def index
    @datos_personales = DatosPersonale.all
  end

  # GET /datos_personales/1
  # GET /datos_personales/1.json
  def show
  end

  # GET /datos_personales/new
  def new
    @datos_personale = DatosPersonale.new
   # 3.times do
    #identificacion_proyecto = @datos_personale.identificacion_proyectos.build
  #end
  end

  # GET /datos_personales/1/edit
  def edit
  end

  # POST /datos_personales
  # POST /datos_personales.json
  def create
  @datos_personale = DatosPersonale.new(datos_personale_params)
    respond_to do |format|
      if @datos_personale.save 
        format.html { redirect_to new_identificacion_proyecto_path }
        format.json { render :show, status: :created, location: @datos_personale }
      else
       format.html { render :new }
        format.json { render json: @datos_personale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_personales/1
  # PATCH/PUT /datos_personales/1.json
  def update
    respond_to do |format|
      if @datos_personale.update(datos_personale_params)
        format.html { redirect_to @datos_personale, notice: 'Datos personale was successfully updated.' }
        format.json { render :show, status: :ok, location: @datos_personale }
      else
        format.html { render :edit }
        format.json { render json: @datos_personale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_personales/1
  # DELETE /datos_personales/1.json
  def destroy
    @datos_personale.destroy
    respond_to do |format|
      format.html { redirect_to datos_personales_url, notice: 'Datos personale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datos_personale
      @datos_personale = DatosPersonale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datos_personale_params
      params.require(:datos_personale).permit(:nombre, :apellido, :facultad, :departamento, :programa, :telefono, :celular, :email, :formacion_academica, :experiencia, :curriculum)
    end
end

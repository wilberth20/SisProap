class PublicacionesPlaneadasAvancesController < ApplicationController
  before_action :set_publicaciones_planeadas_avance, only: [:show, :edit, :update, :destroy]

  # GET /publicaciones_planeadas_avances
  # GET /publicaciones_planeadas_avances.json
  def index
    @publicaciones_planeadas_avances = PublicacionesPlaneadasAvance.all
  end

  # GET /publicaciones_planeadas_avances/1
  # GET /publicaciones_planeadas_avances/1.json
  def show
  end

  # GET /publicaciones_planeadas_avances/new
  def new
    @publicaciones_planeadas_avance = PublicacionesPlaneadasAvance.new
  end

  # GET /publicaciones_planeadas_avances/1/edit
  def edit
  end

  # POST /publicaciones_planeadas_avances
  # POST /publicaciones_planeadas_avances.json
  def create
    @publicaciones_planeadas_avance = PublicacionesPlaneadasAvance.new(publicaciones_planeadas_avance_params)

    respond_to do |format|
      if @publicaciones_planeadas_avance.save
        format.html { redirect_to @publicaciones_planeadas_avance, notice: 'Publicaciones planeadas avance was successfully created.' }
        format.json { render :show, status: :created, location: @publicaciones_planeadas_avance }
      else
        format.html { render :new }
        format.json { render json: @publicaciones_planeadas_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicaciones_planeadas_avances/1
  # PATCH/PUT /publicaciones_planeadas_avances/1.json
  def update
    respond_to do |format|
      if @publicaciones_planeadas_avance.update(publicaciones_planeadas_avance_params)
        format.html { redirect_to @publicaciones_planeadas_avance, notice: 'Publicaciones planeadas avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @publicaciones_planeadas_avance }
      else
        format.html { render :edit }
        format.json { render json: @publicaciones_planeadas_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicaciones_planeadas_avances/1
  # DELETE /publicaciones_planeadas_avances/1.json
  def destroy
    @publicaciones_planeadas_avance.destroy
    respond_to do |format|
      format.html { redirect_to publicaciones_planeadas_avances_url, notice: 'Publicaciones planeadas avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicaciones_planeadas_avance
      @publicaciones_planeadas_avance = PublicacionesPlaneadasAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publicaciones_planeadas_avance_params
      params.require(:publicaciones_planeadas_avance).permit(:titulo_preliminar, :revista_publicacion, :conferencia_publicacion, :fecha_publicacion)
    end
end

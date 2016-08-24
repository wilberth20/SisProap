class PublicacionEsperadasController < ApplicationController
  before_action :set_publicacion_esperada, only: [:show, :edit, :update, :destroy]

  # GET /publicacion_esperadas
  # GET /publicacion_esperadas.json
  def index
    @publicacion_esperadas = PublicacionEsperada.all
  end

  # GET /publicacion_esperadas/1
  # GET /publicacion_esperadas/1.json
  def show
  end

  # GET /publicacion_esperadas/new
  def new
    @publicacion_esperada = PublicacionEsperada.new
  end

  # GET /publicacion_esperadas/1/edit
  def edit
  end

  # POST /publicacion_esperadas
  # POST /publicacion_esperadas.json
  def create
    @publicacion_esperada = PublicacionEsperada.new(publicacion_esperada_params)

    respond_to do |format|
      if @publicacion_esperada.save
        format.html { redirect_to @publicacion_esperada, notice: 'Publicacion esperada was successfully created.' }
        format.json { render :show, status: :created, location: @publicacion_esperada }
      else
        format.html { render :new }
        format.json { render json: @publicacion_esperada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publicacion_esperadas/1
  # PATCH/PUT /publicacion_esperadas/1.json
  def update
    respond_to do |format|
      if @publicacion_esperada.update(publicacion_esperada_params)
        format.html { redirect_to @publicacion_esperada, notice: 'Publicacion esperada was successfully updated.' }
        format.json { render :show, status: :ok, location: @publicacion_esperada }
      else
        format.html { render :edit }
        format.json { render json: @publicacion_esperada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publicacion_esperadas/1
  # DELETE /publicacion_esperadas/1.json
  def destroy
    @publicacion_esperada.destroy
    respond_to do |format|
      format.html { redirect_to publicacion_esperadas_url, notice: 'Publicacion esperada was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publicacion_esperada
      @publicacion_esperada = PublicacionEsperada.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publicacion_esperada_params
      params.require(:publicacion_esperada).permit(:titulo_publicacion, :revista_publicacion, :conferencia_sometera, :fecha_esperada)
    end
end

class CienciaTecnologiaAvancesController < ApplicationController
  before_action :set_ciencia_tecnologia_avance, only: [:show, :edit, :update, :destroy]

  # GET /ciencia_tecnologia_avances
  # GET /ciencia_tecnologia_avances.json
  def index
    @ciencia_tecnologia_avances = CienciaTecnologiaAvance.all
  end

  # GET /ciencia_tecnologia_avances/1
  # GET /ciencia_tecnologia_avances/1.json
  def show
  end

  # GET /ciencia_tecnologia_avances/new
  def new
    @ciencia_tecnologia_avance = CienciaTecnologiaAvance.new
  end

  # GET /ciencia_tecnologia_avances/1/edit
  def edit
  end

  # POST /ciencia_tecnologia_avances
  # POST /ciencia_tecnologia_avances.json
  def create
    @ciencia_tecnologia_avance = CienciaTecnologiaAvance.new(ciencia_tecnologia_avance_params)

    respond_to do |format|
      if @ciencia_tecnologia_avance.save
        format.html { redirect_to @ciencia_tecnologia_avance, notice: 'Ciencia tecnologia avance was successfully created.' }
        format.json { render :show, status: :created, location: @ciencia_tecnologia_avance }
      else
        format.html { render :new }
        format.json { render json: @ciencia_tecnologia_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ciencia_tecnologia_avances/1
  # PATCH/PUT /ciencia_tecnologia_avances/1.json
  def update
    respond_to do |format|
      if @ciencia_tecnologia_avance.update(ciencia_tecnologia_avance_params)
        format.html { redirect_to @ciencia_tecnologia_avance, notice: 'Ciencia tecnologia avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @ciencia_tecnologia_avance }
      else
        format.html { render :edit }
        format.json { render json: @ciencia_tecnologia_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ciencia_tecnologia_avances/1
  # DELETE /ciencia_tecnologia_avances/1.json
  def destroy
    @ciencia_tecnologia_avance.destroy
    respond_to do |format|
      format.html { redirect_to ciencia_tecnologia_avances_url, notice: 'Ciencia tecnologia avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ciencia_tecnologia_avance
      @ciencia_tecnologia_avance = CienciaTecnologiaAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ciencia_tecnologia_avance_params
      params.require(:ciencia_tecnologia_avance).permit(:nombre_act, :participantes, :tipo_act, :inst_nac_internac, :tipo_partiplanif, :fecha, :informe_avance)
    end
end

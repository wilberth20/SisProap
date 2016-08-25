class MonitoreoViculodocenteAvancesController < ApplicationController
  before_action :set_monitoreo_viculodocente_avance, only: [:show, :edit, :update, :destroy]

  # GET /monitoreo_viculodocente_avances
  # GET /monitoreo_viculodocente_avances.json
  def index
    @monitoreo_viculodocente_avances = MonitoreoViculodocenteAvance.all
  end

  # GET /monitoreo_viculodocente_avances/1
  # GET /monitoreo_viculodocente_avances/1.json
  def show
  end

  # GET /monitoreo_viculodocente_avances/new
  def new
    @monitoreo_viculodocente_avance = MonitoreoViculodocenteAvance.new
  end

  # GET /monitoreo_viculodocente_avances/1/edit
  def edit
  end

  # POST /monitoreo_viculodocente_avances
  # POST /monitoreo_viculodocente_avances.json
  def create
    @monitoreo_viculodocente_avance = MonitoreoViculodocenteAvance.new(monitoreo_viculodocente_avance_params)

    respond_to do |format|
      if @monitoreo_viculodocente_avance.save
        format.html { redirect_to @monitoreo_viculodocente_avance, notice: 'Monitoreo viculodocente avance was successfully created.' }
        format.json { render :show, status: :created, location: @monitoreo_viculodocente_avance }
      else
        format.html { render :new }
        format.json { render json: @monitoreo_viculodocente_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /monitoreo_viculodocente_avances/1
  # PATCH/PUT /monitoreo_viculodocente_avances/1.json
  def update
    respond_to do |format|
      if @monitoreo_viculodocente_avance.update(monitoreo_viculodocente_avance_params)
        format.html { redirect_to @monitoreo_viculodocente_avance, notice: 'Monitoreo viculodocente avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @monitoreo_viculodocente_avance }
      else
        format.html { render :edit }
        format.json { render json: @monitoreo_viculodocente_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitoreo_viculodocente_avances/1
  # DELETE /monitoreo_viculodocente_avances/1.json
  def destroy
    @monitoreo_viculodocente_avance.destroy
    respond_to do |format|
      format.html { redirect_to monitoreo_viculodocente_avances_url, notice: 'Monitoreo viculodocente avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monitoreo_viculodocente_avance
      @monitoreo_viculodocente_avance = MonitoreoViculodocenteAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monitoreo_viculodocente_avance_params
      params.require(:monitoreo_viculodocente_avance).permit(:nombre_curso, :nivel_curso, :facultad, :semestre)
    end
end

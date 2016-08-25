class ControlEntregaAvancesController < ApplicationController
  before_action :set_control_entrega_avance, only: [:show, :edit, :update, :destroy]

  # GET /control_entrega_avances
  # GET /control_entrega_avances.json
  def index
    @control_entrega_avances = ControlEntregaAvance.all
  end

  # GET /control_entrega_avances/1
  # GET /control_entrega_avances/1.json
  def show
  end

  # GET /control_entrega_avances/new
  def new
    @control_entrega_avance = ControlEntregaAvance.new
  end

  # GET /control_entrega_avances/1/edit
  def edit
  end

  # POST /control_entrega_avances
  # POST /control_entrega_avances.json
  def create
    @control_entrega_avance = ControlEntregaAvance.new(control_entrega_avance_params)

    respond_to do |format|
      if @control_entrega_avance.save
        format.html { redirect_to @control_entrega_avance, notice: 'Control entrega avance was successfully created.' }
        format.json { render :show, status: :created, location: @control_entrega_avance }
      else
        format.html { render :new }
        format.json { render json: @control_entrega_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /control_entrega_avances/1
  # PATCH/PUT /control_entrega_avances/1.json
  def update
    respond_to do |format|
      if @control_entrega_avance.update(control_entrega_avance_params)
        format.html { redirect_to @control_entrega_avance, notice: 'Control entrega avance was successfully updated.' }
        format.json { render :show, status: :ok, location: @control_entrega_avance }
      else
        format.html { render :edit }
        format.json { render json: @control_entrega_avance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /control_entrega_avances/1
  # DELETE /control_entrega_avances/1.json
  def destroy
    @control_entrega_avance.destroy
    respond_to do |format|
      format.html { redirect_to control_entrega_avances_url, notice: 'Control entrega avance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_control_entrega_avance
      @control_entrega_avance = ControlEntregaAvance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def control_entrega_avance_params
      params.require(:control_entrega_avance).permit(:numero_informe, :fecha_limite, :fecha_entrega)
    end
end

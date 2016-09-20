class ParticipacionesActsController < ApplicationController
  before_action :set_participaciones_act, only: [:show, :edit, :update, :destroy]

  # GET /participaciones_acts
  # GET /participaciones_acts.json
  def index
    @participaciones_acts = ParticipacionesAct.all
  end

  # GET /participaciones_acts/1
  # GET /participaciones_acts/1.json
  def show
  end

  # GET /participaciones_acts/new
  def new
    @participaciones_act = ParticipacionesAct.new
  end

  # GET /participaciones_acts/1/edit
  def edit
  end

  # POST /participaciones_acts
  # POST /participaciones_acts.json
  def create
    @participaciones_act = ParticipacionesAct.new(participaciones_act_params)

    respond_to do |format|
      if @participaciones_act.save
        format.html { redirect_to @participaciones_act, notice: 'Participaciones act was successfully created.' }
        format.json { render :show, status: :created, location: @participaciones_act }
      else
        format.html { render :new }
        format.json { render json: @participaciones_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participaciones_acts/1
  # PATCH/PUT /participaciones_acts/1.json
  def update
    respond_to do |format|
      if @participaciones_act.update(participaciones_act_params)
        format.html { redirect_to @participaciones_act, notice: 'Participaciones act was successfully updated.' }
        format.json { render :show, status: :ok, location: @participaciones_act }
      else
        format.html { render :edit }
        format.json { render json: @participaciones_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participaciones_acts/1
  # DELETE /participaciones_acts/1.json
  def destroy
    @participaciones_act.destroy
    respond_to do |format|
      format.html { redirect_to participaciones_acts_url, notice: 'Participaciones act was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participaciones_act
      @participaciones_act = ParticipacionesAct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participaciones_act_params
      params.require(:participaciones_act).permit(:numero, :nombre_act, :tipo_act, :inst_nac_internac, :fecha, :tipo_planif, :contraparte_beneficio)
    end
end

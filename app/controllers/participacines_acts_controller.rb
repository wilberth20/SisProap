class ParticipacinesActsController < ApplicationController
  before_action :set_participacines_act, only: [:show, :edit, :update, :destroy]

  # GET /participacines_acts
  # GET /participacines_acts.json
  def index
    @participacines_acts = ParticipacinesAct.all
  end

  # GET /participacines_acts/1
  # GET /participacines_acts/1.json
  def show
  end

  # GET /participacines_acts/new
  def new
    @participacines_act = ParticipacinesAct.new
  end

  # GET /participacines_acts/1/edit
  def edit
  end

  # POST /participacines_acts
  # POST /participacines_acts.json
  def create
    @participacines_act = ParticipacinesAct.new(participacines_act_params)

    respond_to do |format|
      if @participacines_act.save
        format.html { redirect_to @participacines_act, notice: 'Participacines act was successfully created.' }
        format.json { render :show, status: :created, location: @participacines_act }
      else
        format.html { render :new }
        format.json { render json: @participacines_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participacines_acts/1
  # PATCH/PUT /participacines_acts/1.json
  def update
    respond_to do |format|
      if @participacines_act.update(participacines_act_params)
        format.html { redirect_to @participacines_act, notice: 'Participacines act was successfully updated.' }
        format.json { render :show, status: :ok, location: @participacines_act }
      else
        format.html { render :edit }
        format.json { render json: @participacines_act.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participacines_acts/1
  # DELETE /participacines_acts/1.json
  def destroy
    @participacines_act.destroy
    respond_to do |format|
      format.html { redirect_to participacines_acts_url, notice: 'Participacines act was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participacines_act
      @participacines_act = ParticipacinesAct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participacines_act_params
      params.require(:participacines_act).permit(:numero, :nombre_act, :tipo_act, :inst_naci_internaci, :fecha, :tipo_planific_planificada)
    end
end

class MetodologiaController < ApplicationController
  before_action :set_metodologium, only: [:show, :edit, :update, :destroy]

  # GET /metodologia
  # GET /metodologia.json
  def index
    @metodologia = Metodologium.all
  end

  # GET /metodologia/1
  # GET /metodologia/1.json
  def show
  end

  # GET /metodologia/new
  def new
    @metodologium = Metodologium.new
  end

  # GET /metodologia/1/edit
  def edit
  end

  # POST /metodologia
  # POST /metodologia.json
  def create
    @metodologium = Metodologium.new(metodologium_params)

    respond_to do |format|
      if @metodologium.save
        format.html { redirect_to @metodologium, notice: 'Metodologium was successfully created.' }
        format.json { render :show, status: :created, location: @metodologium }
      else
        format.html { render :new }
        format.json { render json: @metodologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /metodologia/1
  # PATCH/PUT /metodologia/1.json
  def update
    respond_to do |format|
      if @metodologium.update(metodologium_params)
        format.html { redirect_to @metodologium, notice: 'Metodologium was successfully updated.' }
        format.json { render :show, status: :ok, location: @metodologium }
      else
        format.html { render :edit }
        format.json { render json: @metodologium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /metodologia/1
  # DELETE /metodologia/1.json
  def destroy
    @metodologium.destroy
    respond_to do |format|
      format.html { redirect_to metodologia_url, notice: 'Metodologium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_metodologium
      @metodologium = Metodologium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def metodologium_params
      params.require(:metodologium).permit(:tipo_estudio, :proc_tratamiento, :proc_esticos, :plan_analisis, :conclucion)
    end
end

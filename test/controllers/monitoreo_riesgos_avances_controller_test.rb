require 'test_helper'

class MonitoreoRiesgosAvancesControllerTest < ActionController::TestCase
  setup do
    @monitoreo_riesgos_avance = monitoreo_riesgos_avances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:monitoreo_riesgos_avances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create monitoreo_riesgos_avance" do
    assert_difference('MonitoreoRiesgosAvance.count') do
      post :create, monitoreo_riesgos_avance: { acciones_mitigacion: @monitoreo_riesgos_avance.acciones_mitigacion, desc_riegos: @monitoreo_riesgos_avance.desc_riegos, informe_financiero: @monitoreo_riesgos_avance.informe_financiero, observaciones_adicionales: @monitoreo_riesgos_avance.observaciones_adicionales, probab_ocurrencia: @monitoreo_riesgos_avance.probab_ocurrencia }
    end

    assert_redirected_to monitoreo_riesgos_avance_path(assigns(:monitoreo_riesgos_avance))
  end

  test "should show monitoreo_riesgos_avance" do
    get :show, id: @monitoreo_riesgos_avance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @monitoreo_riesgos_avance
    assert_response :success
  end

  test "should update monitoreo_riesgos_avance" do
    patch :update, id: @monitoreo_riesgos_avance, monitoreo_riesgos_avance: { acciones_mitigacion: @monitoreo_riesgos_avance.acciones_mitigacion, desc_riegos: @monitoreo_riesgos_avance.desc_riegos, informe_financiero: @monitoreo_riesgos_avance.informe_financiero, observaciones_adicionales: @monitoreo_riesgos_avance.observaciones_adicionales, probab_ocurrencia: @monitoreo_riesgos_avance.probab_ocurrencia }
    assert_redirected_to monitoreo_riesgos_avance_path(assigns(:monitoreo_riesgos_avance))
  end

  test "should destroy monitoreo_riesgos_avance" do
    assert_difference('MonitoreoRiesgosAvance.count', -1) do
      delete :destroy, id: @monitoreo_riesgos_avance
    end

    assert_redirected_to monitoreo_riesgos_avances_path
  end
end
